# DBT-data-transformation-project


## Overview

This project demonstrates an end-to-end data transformation pipeline using dbt and Snowflake.

## Tech Stack

* dbt (data build tool)
* Snowflake (Data Warehouse)
* SQL

## Architecture

Raw Data → Staging → Intermediate → Mart

## Project Structure

```
sales_project/
│
├── models/
│   ├── staging/
│   │   └── stg_orders.sql          # Raw data extraction
│   │
│   ├── intermediate/
│   │   └── int_orders_clean.sql    # Data cleaning (remove negative amounts)
│   │
│   ├── marts/
│   │   ├── fct_revenue.sql         # Final revenue aggregation
│   │   └── fct_orders_incremental.sql  # Incremental processing (optional)
│   │
│   └── schema.yml                  # Sources + tests
│
├── dbt_project.yml                # Project configuration
├── README.md                     # Project documentation
│
└── (profiles.yml not included for security reasons)
```


## Features

* Modular SQL models using dbt
* Dependency management using `ref()`
* Source configuration using `source()`
* Data quality tests using dbt tests
* Documentation using dbt docs

## How to Run

```bash
dbt debug
dbt run
dbt test
dbt docs generate
dbt docs serve
```

## Output

* Cleaned and transformed data in Snowflake
* Final revenue table (`fct_revenue`)
