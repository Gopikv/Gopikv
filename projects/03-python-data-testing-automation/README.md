# Python Data Testing Automation Framework

A lightweight Python framework for automating repetitive data-validation tasks across CSV datasets. Designed to demonstrate practical automation skills for **ETL Testing, Data Testing, Data Quality, and QA Engineering**.

## What It Does

- Loads source and target datasets
- Compares record counts
- Checks duplicate keys
- Finds missing and unexpected records
- Detects column-level mismatches
- Validates mandatory fields
- Produces a structured PASS/FAIL report

## Tech Stack

- Python 3
- Pandas
- CSV
- Pytest-ready validation design
- Git & GitHub

## Project Structure

```text
03-python-data-testing-automation/
├── README.md
├── data/
│   ├── source.csv
│   └── target.csv
├── src/
│   ├── data_validator.py
│   └── report_generator.py
└── tests/
    └── test_data_validator.py
```

## Automation Flow

```text
Load Data → Validate Schema → Compare Keys → Compare Values
                         ↓
                  Business Rules
                         ↓
                  PASS / FAIL Report
```

## Recruiter Value

Demonstrates how Python can reduce manual ETL testing effort, standardize validation logic, and make large-data reconciliation repeatable.

**Keywords:** Python, Pandas, Data Testing, ETL Testing, Test Automation, Data Quality, Data Validation, SQL, Reconciliation, QA Automation.
