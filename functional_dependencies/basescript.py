# INSERT TABLE NAME HERE:
TABLE_NAME = ""

# INSERT COLUMN NAMES HERE:
R = ['id', 'pid', 'sid', 'sn', 'pn', 'mid', 'mn']

SQLquery = """
SELECT '%s: %s --> %s' AS FD,
CASE WHEN COUNT(*)=0 THEN 'MAY HOLD'
ELSE 'does not hold' END AS VALIDITY
FROM (
	SELECT x.%s
	FROM %s x
	GROUP BY x.%s
	HAVING COUNT(DISTINCT x.%s) > 1
) X;
"""


def PrintSQL(Att1, Att2):
    print(SQLquery % (TABLE_NAME, Att1, Att2, Att1, TABLE_NAME, Att1, Att2))


for i in range(len(R)):
    for j in range(len(R)):
        if (i != j):
            PrintSQL(R[i], R[j])
