# SQL Data Reconciliation Toolkit

A practical SQL Server toolkit for validating source-to-target data, identifying mismatches, detecting duplicates, and reconciling business totals.

## Skills Demonstrated

- SQL Server / T-SQL
- Source-to-target validation
- Data reconciliation
- Duplicate detection
- Missing-record validation
- Aggregate reconciliation
- Business-rule validation
- Exception reporting
- Query optimization

## Project Structure

```text
01-sql-data-reconciliation-toolkit/
├── README.md
├── sql/
│   ├── 01_create_sample_tables.sql
│   ├── 02_load_sample_data.sql
│   ├── 03_record_count_validation.sql
│   ├── 04_missing_records.sql
│   ├── 05_mismatched_records.sql
│   ├── 06_duplicate_detection.sql
│   ├── 07_aggregate_reconciliation.sql
│   └── 08_business_rule_validation.sql
└── docs/
    └── test-scenarios.md
```

## Validation Approach

| Validation | Expected Outcome |
|---|---|
| Record count | Source and target counts reconcile or exceptions are reported |
| Missing records | Records present in source but absent in target are identified |
| Mismatch | Attribute-level differences are identified |
| Duplicates | Duplicate business keys are reported |
| Aggregate | Amount/count totals reconcile |
| Business rules | Invalid records are isolated |

## Recruiter Value

This project demonstrates practical SQL skills used by **ETL Test Engineers, Data Test Engineers, QA Engineers, and Data Quality Engineers** in production-style validation scenarios.
