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

* staging: raw data cleaning
* intermediate: transformations
* marts: final business tables

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
