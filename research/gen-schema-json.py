"""
gen-schema-json.py
Parses schema-reference.txt into schema-reference.json.
Classifies each table as platform, client_custom, or artifact.
Groups by domain prefix.

Classification rules:
  Z*            -> client_custom   (SAP Z-namespace = client objects, strong signal)
  T360_*, CX_*, MT_*  -> client_custom   (non-standard prefixes, likely client)
  teritory*     -> client_custom   (misspelled name = manual creation)
  tmp_*/test_* without version numbers -> artifact (dev/test leftovers)
  tmp_v{year}*, b_*{date}* -> platform_artifact (CPQ migration backups)
  sys_*         -> platform        (CPQ sys namespace)
  everything else -> platform      (default, confidence: medium)

Output fields per table:
  name, columns[], origin, origin_confidence, domain_group, notes
"""

import json, re

IN  = r"C:/Users/andrew.c.kim/ClaudeProjects/research/schema-reference.txt"
OUT = r"C:/Users/andrew.c.kim/ClaudeProjects/research/schema-reference.json"

# ── helpers ──────────────────────────────────────────────────────────────────

def parse_col(raw):
    """Parse 'ColName:type?' into {name, type, nullable}."""
    nullable = raw.endswith("?")
    body = raw.rstrip("?")
    colon = body.find(":")
    if colon == -1:
        return {"name": body, "type": "unknown", "nullable": nullable}
    return {
        "name":     body[:colon],
        "type":     body[colon+1:],
        "nullable": nullable,
    }

def classify(name):
    """Return (origin, confidence, notes)."""
    n = name.upper()

    # SAP Z/Y namespace — strong signal for client custom
    if re.match(r'^Z', name) or re.match(r'^Y', name):
        return "client_custom", "high", "SAP Z/Y namespace reserved for client objects"

    # Known client-specific prefixes from this instance
    if name.startswith("T360_"):
        return "client_custom", "medium", "T360 prefix not in CPQ platform"
    if name.startswith("CX_"):
        return "client_custom", "medium", "CX prefix not in CPQ platform"
    if name.startswith("MT_") and name not in ("MT_DOMAINS",):
        return "client_custom", "medium", "MT prefix not in CPQ platform"

    # Misspelled names are almost certainly hand-created custom tables
    if name.lower().startswith("teritory"):
        return "client_custom", "high", "Misspelled name indicates manual table creation"

    # Migration backup artifacts (CPQ creates these during upgrades)
    if re.match(r'^tmp_v\d{4}', name, re.IGNORECASE):
        return "platform_artifact", "high", "CPQ migration backup table (version-stamped)"
    if re.match(r'^b_[a-zA-Z]+_\d{8}', name):
        return "platform_artifact", "high", "CPQ migration backup table (date-stamped)"
    if re.match(r'^bkp_', name, re.IGNORECASE):
        return "platform_artifact", "high", "CPQ backup table"

    # Dev/test artifacts
    if re.match(r'^test_', name, re.IGNORECASE) or re.match(r'^tmp_', name, re.IGNORECASE):
        return "artifact", "medium", "Test or temp table — verify before relying on"

    # CPQ sys namespace
    if name.startswith("sys_"):
        return "platform", "high", "CPQ sys namespace (Quote 2.0 platform tables)"

    # Everything else — platform by default
    return "platform", "medium", None


def domain_group(name):
    """Assign a broad domain based on name patterns."""
    n = name.upper()
    if n.startswith("SYS_QUOTE"):      return "quote"
    if n.startswith("SYS_BUSINESS"):   return "business_partner"
    if n.startswith("SYS_APPROVAL") or n.startswith("SYS_OUTOFOFFICE"): return "approval"
    if n.startswith("SYS_PROMO"):      return "promotions"
    if n.startswith("SYS_PRICING") or n.startswith("SYS_CPS") or n.startswith("SYS_VC"): return "pricing"
    if n.startswith("SYS_PRODUCT"):    return "product"
    if n.startswith("SYS_SALES"):      return "sales_area"
    if n.startswith("SYS_MIGRATION") or n.startswith("SYS_CUSTOMER_MIGRATION"): return "migration"
    if n.startswith("SYS_RM"):         return "reporting"
    if n.startswith("SYS_FEDERATION") or n.startswith("SYS_SAML") or n.startswith("SYS_OAUTH"): return "auth"
    if n.startswith("SYS_EMAIL"):      return "email"
    if n.startswith("SYS_CHANGESET") or n.startswith("SYS_CHANGE"): return "change_management"
    if n.startswith("SYS_CART") or n.startswith("CART"): return "cart"
    if n.startswith("SYS_CLUSTER") or n.startswith("SYS_SUB"): return "infrastructure"
    if n.startswith("SYS_"):           return "platform_misc"
    if n.startswith("ZEQ"):            return "client_equipment"
    if n.startswith("ZTR"):            return "client_truck"
    if n.startswith("ZVLC") or n.startswith("ZZACCT") or n.startswith("ZZEQ") or n.startswith("ZCONFIG"): return "client_misc"
    if n.startswith("T360"):           return "client_t360"
    if n.startswith("CX_"):            return "client_cx"
    if "PRODUCT" in n:                 return "product"
    if "QUOTE" in n:                   return "quote"
    if "APPROVAL" in n or "APPROVE" in n: return "approval"
    if "CRM" in n:                     return "crm_integration"
    if "NOTIFICATION" in n or "EMAIL" in n: return "email"
    if "USER" in n or "PASSWORD" in n or "LOGIN" in n: return "user_management"
    if "ATTRIBUTE" in n or n.startswith("ABS_") or n.startswith("ATTR"): return "product_config"
    if "MARKET" in n:                  return "market"
    if "TEMPLATE" in n or "DOCUMENT" in n: return "document"
    if n.startswith("B_") or n.startswith("TMP") or n.startswith("BKP"): return "artifact"
    return "other"


# ── parse ─────────────────────────────────────────────────────────────────────

tables = []
with open(IN, encoding="utf-8") as f:
    for line in f:
        line = line.strip()
        if not line.startswith("TABLE|"):
            continue
        parts = line.split("|")
        tname = parts[1]
        cols_raw = parts[2].split(",") if len(parts) > 2 and parts[2] else []
        columns = [parse_col(c) for c in cols_raw if c]

        origin, confidence, note = classify(tname)
        group = domain_group(tname)

        entry = {
            "name":               tname,
            "column_count":       len(columns),
            "columns":            columns,
            "origin":             origin,
            "origin_confidence":  confidence,
            "domain_group":       group,
            "cpq_objects":        [],   # populated manually: which CPQ objects use this table
        }
        if note:
            entry["origin_note"] = note
        tables.append(entry)

# ── summary ───────────────────────────────────────────────────────────────────

from collections import Counter

origin_counts  = Counter(t["origin"] for t in tables)
group_counts   = Counter(t["domain_group"] for t in tables)
client_tables  = [t for t in tables if t["origin"] == "client_custom"]

output = {
    "_meta": {
        "source":       "research/schema-reference.txt",
        "total_tables": len(tables),
        "origin_summary": dict(origin_counts),
        "domain_summary": dict(group_counts),
    },
    "tables": tables,
}

with open(OUT, "w", encoding="utf-8") as f:
    json.dump(output, f, indent=2)

print("Written", len(tables), "tables to schema-reference.json")
print()
print("Origin breakdown:")
for k, v in sorted(origin_counts.items(), key=lambda x: -x[1]):
    print(f"  {k:<22} {v}")
print()
print("Client custom tables (" + str(len(client_tables)) + "):")
for t in sorted(client_tables, key=lambda x: x["name"]):
    print(f"  {t['name']:<45} [{t['origin_confidence']}] {t.get('origin_note','')}")
