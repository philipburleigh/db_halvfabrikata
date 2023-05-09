# db_halvfabrikata

Alt halvfabrikate er sorteret i de forskellige tematiske mapper (Subqueries, division queries, etc.)

Alle queries er baseret på databasen ddl.sql (homework 1).

Opsætning af db:

1. Lav en tom database:

   `createdb -U postgres <databaseNavn>`

   (`postgres` kan skulle erstattes af navnet på din bruger)

2. Pipe ddl.sql ind i databasen:

   `psql -U postgres -q <databaseNavn> < ddl.sql`

   (`postgres` kan skulle erstattes af navnet på din bruger)

### Brugbare kommandoer:

- Slet database: `dropdb -U postgres <databaseNavn>`

  (`postgres` kan skulle erstattes af navnet på din bruger)
