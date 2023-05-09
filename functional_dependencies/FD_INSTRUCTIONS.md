# Functional Dependencies Instructions

1. Opdater databasenavnet og rækkerne i _basescript.py_:

   `# INSERT DB NAME HERE:`

   `DB_NAME = "<databaseNavn>"`

   `# INSERT COLUMN NAMES HERE:`

   `R = ['c1', 'c2', ... 'cn']`

   `...`

2. Generer tekstfil med alle SQL queries

   - naviger til _./functional_dependencies_
   - Kør: `python basescript.py > fd_queries`

   - Kør _fd_queries_ mod din database:
     `psql <databaseNavn> < fd_queries `
