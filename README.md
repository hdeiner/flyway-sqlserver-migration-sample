This project is all about how to use a different tool to manage and maintain our Microsoft SQL Server databases, both for schema and domain data.  See https://flywaydb.org for details about this tool.

- This causes some rather special challenges for organizing the project.
    - For now, flyway-4.2.0/conf hold the configuration file
    - flyway-4.2.0/drivers holds the sqljdbc42.jar
    - flyway-4.2.0/jars would hold migration program jars (should we need and write these)
- I have used Docker to host the SQL Server database.  We would use the real version of SQL Server in a real project.
- I use docker-compose to aid understanding how the container is used.
- The scripts to run show
    1. Bring up the SQL Server container
    2. Create a database for Flyway to manage
    3. Simulate a certain database schema/data state and migrate to that state
    4. Simulate a migration to the latest database schema/data state.
    5. Bring down the database container.