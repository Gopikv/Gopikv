# Banking Data Testing Project

A synthetic banking-domain portfolio project demonstrating practical **ETL Testing, SQL Validation, Loan Data Testing, Reconciliation, and Financial Reporting Validation**.

> **Note:** All data and examples in this project are synthetic and created for portfolio demonstration. No confidential production data is used.

## Business Flow

```text
Customer / Member
       ↓
Loan Application
       ↓
Loan Disbursement
       ↓
Repayment Transactions
       ↓
Outstanding / Overdue Calculation
       ↓
Recovery & MIS Reporting
```

## Key Testing Areas

- Source-to-target reconciliation
- Loan amount validation
- Disbursement validation
- Principal outstanding validation
- Overdue amount validation
- Recovery percentage validation
- Duplicate transaction detection
- Mandatory-field validation
- Financial-year validation
- Report-level aggregation checks
- Business-rule validation

## Financial Year Rule

For an Indian financial year beginning in April:

```sql
CASE
    WHEN MONTH(DisbursementDate) >= 4 THEN YEAR(DisbursementDate)
    ELSE YEAR(DisbursementDate) - 1
END AS FinancialYearStart
```

## Skills Demonstrated

**SQL:** Joins, CTEs, CASE expressions, aggregations, reconciliation, duplicate detection and business-rule validation.

**ETL Testing:** Source-to-target validation, transformation testing, completeness, accuracy and reconciliation.

**Banking Domain:** Loans, disbursement, repayments, outstanding, overdue, recovery and MIS reporting.

## Portfolio Objective

This project demonstrates the ability to translate banking business rules into repeatable database and ETL validation scenarios—useful for **ETL Tester, Data Tester, SQL Tester and Data Quality Engineer** roles.
