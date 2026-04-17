"""
identify-custom-tables.py
Calls GET /api/custom-table/v1/customTables to get the authoritative list of
client-created custom tables, then cross-references schema-reference.json and
re-tags each table's origin as client_custom or platform — no heuristics.

Usage:
    set CPQ_BASE_URL=https://your-tenant.cpq.cloud.sap
    set CPQ_USERNAME=your_username
    set CPQ_PASSWORD=your_password
    py identify-custom-tables.py

Output: updates schema-reference.json in place, prints summary.
"""

import json, os, sys
try:
    import urllib.request as req
    import urllib.parse as parse
    import urllib.error as uerr
except ImportError:
    sys.exit("Requires Python 3")

SCHEMA_JSON = r"C:/Users/andrew.c.kim/ClaudeProjects/research/schema-reference.json"

# ── config ────────────────────────────────────────────────────────────────────

BASE_URL = os.environ.get("CPQ_BASE_URL", "").rstrip("/")
USERNAME = os.environ.get("CPQ_USERNAME", "")
PASSWORD = os.environ.get("CPQ_PASSWORD", "")

if not BASE_URL or not USERNAME or not PASSWORD:
    sys.exit(
        "Set environment variables before running:\n"
        "  CPQ_BASE_URL  e.g. https://client.tst.cpq.cloud.sap\n"
        "  CPQ_USERNAME\n"
        "  CPQ_PASSWORD"
    )

# ── helpers ───────────────────────────────────────────────────────────────────

def get_json(url, token=None):
    r = req.Request(url)
    if token:
        r.add_header("Authorization", "Bearer " + token)
    r.add_header("Accept", "application/json")
    try:
        with req.urlopen(r, timeout=30) as resp:
            return json.loads(resp.read().decode("utf-8"))
    except uerr.HTTPError as e:
        body = e.read().decode("utf-8", errors="replace")
        sys.exit("HTTP " + str(e.code) + " on " + url + "\n" + body[:500])

def post_query(url, timeout=30):
    r = req.Request(url, method="POST")
    r.add_header("Accept", "application/json")
    try:
        with req.urlopen(r, timeout=timeout) as resp:
            return resp.read().decode("utf-8").strip().strip('"')
    except uerr.HTTPError as e:
        body = e.read().decode("utf-8", errors="replace")
        sys.exit("HTTP " + str(e.code) + " on " + url + "\n" + body[:500])

# ── step 1: authenticate ──────────────────────────────────────────────────────

print("Authenticating...")
login_url = (BASE_URL + "/api/rd/v1/Core/LogIn?"
             + parse.urlencode({"username": USERNAME, "password": PASSWORD}))
token = post_query(login_url)
if not token:
    sys.exit("Login returned empty token")
print("  token obtained (" + str(len(token)) + " chars)")

# ── step 2: fetch all custom tables ──────────────────────────────────────────

print("Fetching custom tables...")
custom_tables_url = BASE_URL + "/api/custom-table/v1/customTables"
response = get_json(custom_tables_url, token=token)

# response is a list of table objects; extract names
# the API may return objects with 'name', 'tableName', or similar
custom_names = set()
if isinstance(response, list):
    for item in response:
        if isinstance(item, dict):
            name = item.get("name") or item.get("tableName") or item.get("TableName")
            if name:
                custom_names.add(name.upper())
        elif isinstance(item, str):
            custom_names.add(item.upper())
elif isinstance(response, dict):
    # might be wrapped: { "items": [...], "total": N }
    items = response.get("items") or response.get("data") or response.get("value") or []
    for item in items:
        name = item.get("name") or item.get("tableName") or item.get("TableName") if isinstance(item, dict) else item
        if name:
            custom_names.add(str(name).upper())

print("  found " + str(len(custom_names)) + " custom tables via API")

if not custom_names:
    print("WARNING: API returned no table names. Check response shape above.")
    print("Raw response (first 500 chars):", str(response)[:500])
    sys.exit(1)

# ── step 3: update schema-reference.json ─────────────────────────────────────

with open(SCHEMA_JSON, encoding="utf-8") as f:
    schema = json.load(f)

changed = 0
for table in schema["tables"]:
    tname_upper = table["name"].upper()
    is_custom = tname_upper in custom_names

    new_origin     = "client_custom" if is_custom else "platform"
    new_confidence = "definitive"
    new_note       = ("Confirmed via GET /api/custom-table/v1/customTables"
                      if is_custom else
                      "Not returned by custom table API — platform table")

    if table.get("origin") != new_origin or table.get("origin_confidence") != new_confidence:
        changed += 1

    table["origin"]             = new_origin
    table["origin_confidence"]  = new_confidence
    table["origin_note"]        = new_note

# update meta summary
from collections import Counter
origin_counts = Counter(t["origin"] for t in schema["tables"])
schema["_meta"]["origin_summary"] = dict(origin_counts)
schema["_meta"]["origin_method"]  = "definitive — GET /api/custom-table/v1/customTables"

with open(SCHEMA_JSON, "w", encoding="utf-8") as f:
    json.dump(schema, f, indent=2)

# ── summary ───────────────────────────────────────────────────────────────────

print()
print("Updated schema-reference.json (" + str(changed) + " tables reclassified)")
print()
print("Origin breakdown:")
for k, v in sorted(origin_counts.items(), key=lambda x: -x[1]):
    print("  " + k.ljust(20) + str(v))

print()
print("Client custom tables (" + str(origin_counts.get("client_custom", 0)) + "):")
for t in sorted([t for t in schema["tables"] if t["origin"] == "client_custom"],
                key=lambda x: x["name"]):
    print("  " + t["name"])
