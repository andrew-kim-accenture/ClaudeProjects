# SCHEMA_INTROSPECT.py
# Run from ScriptWorkbench Standard Mode (any quote context)
# Dumps base table schemas via SqlHelper + INFORMATION_SCHEMA
# Output goes to ScriptWorkbench console via Trace.Write
#
# TABLE|TableName|ColName:type[?],...
# ? = nullable   (MAX) = max-length string column

TABLE_FILTER = ""  # prefix filter: "QUOTE", "PRODUCT", "" for all

def safe(val):
    if val is None:
        return ""
    s = str(val)
    return "" if s.lower() in ("none", "dbnull", "system.dbnull") else s

def build_type(col):
    dtype   = safe(col.DATA_TYPE)
    max_len = safe(col.CHARACTER_MAXIMUM_LENGTH)
    prec    = safe(col.NUMERIC_PRECISION)
    scale   = safe(col.NUMERIC_SCALE)
    if max_len:
        dtype += "(MAX)" if max_len == "-1" else "(" + max_len + ")"
    elif prec and scale:
        dtype += "(" + prec + "," + scale + ")"
    return dtype

# Step 1: collect table names
like_param = (TABLE_FILTER + "%") if TABLE_FILTER else "%"

t_rows = SqlHelper.GetList(
    "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES "
    "WHERE TABLE_TYPE = 'BASE TABLE' "
    "AND TABLE_NAME LIKE '" + like_param + "'"
)

table_names = [safe(r.TABLE_NAME) for r in t_rows]
filter_label = (TABLE_FILTER + "*") if TABLE_FILTER else "*"
Trace.Write("SCHEMA_START | tables=" + str(len(table_names)) + " | filter=" + filter_label)

# Step 2: columns per table
for tname in table_names:
    c_rows = SqlHelper.GetList(
        "SELECT COLUMN_NAME, DATA_TYPE, "
        "CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE, IS_NULLABLE "
        "FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE TABLE_NAME = '" + tname + "'"
    )
    parts = []
    for c in c_rows:
        dtype    = build_type(c)
        nullable = "?" if safe(c.IS_NULLABLE).upper() == "YES" else ""
        parts.append(safe(c.COLUMN_NAME) + ":" + dtype + nullable)

    Trace.Write("TABLE|" + tname + "|" + ",".join(parts))

Trace.Write("SCHEMA_END | done")
