# Loadsmart challenge
In this repository you will find the SQL scripts i made to build the dimensional model and to populate said tables, the ER-diagram, and the PowerBI File.

Database used: PostgreSQL 14 under BigQuery.
DBT used: https://www.getdbt.com/
Visualization tool: PowerBI

Inside folder models/loadsmart are the following scripts:
  - script_tables.sql -> SQL to create tables from the model created (ER-Diagram.png)
  - update_carrier.sql, update_shipper.sql, update_equipment_type.sql, update_lanes.sql -> fills the tables with data

LoadsmartPowerBI.pbix is the POwerBI dashboard i created, is directly connected to Bigquery through DirectQuery, so no datafile is needed to upload.
