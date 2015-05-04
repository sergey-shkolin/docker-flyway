# Flyway (Command-line Tool) v.3.2.1

### Usage


`flyway [options] command`

By default, the configuration will be read from conf/flyway.conf.
Options passed from the command-line override the configuration.

### Commands
migrate  : Migrates the database
clean    : Drops all objects in the configured schemas
info     : Prints the information about applied, current and pending migrations
validate : Validates the applied migrations against the ones on the classpath
init     : Creates and initializes the metadata table
repair   : Repairs the metadata table

### Configuration

Directory for SQL: /flyway/sql/
Configuration file: /flyway/conf/flyway.conf

```
flyway.url=jdbc:mysql://localhost:3306/MyDatabase
flyway.user=user
flyway.password=password
```
