# ETL Data Validation Framework

A recruiter-focused mini framework demonstrating practical **ETL testing, source-to-target validation, reconciliation, data-quality checks, and Python-assisted automation**.

## Objective

Validate an ETL pipeline that moves customer and loan data from a source system into a target database while detecting missing records, duplicates, nulls, datatype issues, transformation mismatches, and business-rule violations.

## Tech Stack

- Python 3
- Pandas
- SQL / SQL Server concepts
- CSV test data
- Git & GitHub

## ETL Validation Flow

```text
Source CSV / Database
        |
        v
   ETL Transformation
        |
        v
Target CSV / Database
        |
        v
Validation Engine
        |
        +--> Record Count
        +--> Key Validation
        +--> Null Checks
        +--> Duplicate Checks
        +--> Data Comparison
        +--> Business Rules
        +--> Reconciliation
        |
        v
   Test Result Report
```

## Project Structure

```text
02-etl-data-validation-framework/
├── README.md
├── data/
│   ├── source_customer.csv
│   └── target_customer.csv
├── python/
│   ├── etl_validation.py
│   └── generate_report.py
├── sql/
│   └── validation_queries.sql
└── docs/
    └── test-cases.md
```

## Validation Coverage

| Check | Purpose |
|---|---|
| Record count | Detect source/target count differences |
| Primary key | Validate unique business keys |
| Null check | Validate mandatory fields |
| Duplicate check | Detect duplicate records |
| Data comparison | Identify source-target differences |
| Transformation | Validate converted business values |
| Business rules | Validate domain conditions |
| Reconciliation | Compare totals and aggregates |

## Recruiter Keywords

**ETL Testing, Data Testing, Data Validation, Source-to-Target Validation, Data Reconciliation, Data Quality, SQL, Python, Pandas, Database Testing, Automation, Regression Testing, Banking Data**
