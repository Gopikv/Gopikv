# Banking Data Testing Scenarios

| Test Case ID | Scenario | Validation | Expected Result |
|---|---|---|---|
| BANK-001 | Loan record completeness | Compare source and target counts | Counts should reconcile |
| BANK-002 | Duplicate loan validation | Group by LoanID | No duplicate LoanID |
| BANK-003 | Mandatory fields | Check LoanID, CustomerID, date and amount | No mandatory nulls |
| BANK-004 | Loan amount validation | LoanAmount >= 0 | PASS |
| BANK-005 | Outstanding validation | Outstanding <= LoanAmount | PASS |
| BANK-006 | Overdue validation | Overdue >= 0 | PASS |
| BANK-007 | Recovery validation | Recovery >= 0 and <= LoanAmount | PASS |
| BANK-008 | Recovery percentage | Recalculate Recovery / LoanAmount × 100 | Calculated value should match report |
| BANK-009 | Financial year | Apply April-March rule | Correct FY assigned |
| BANK-010 | MIS aggregation | Reconcile loan totals with report totals | Totals should match |

## Tester Approach

1. Understand the banking business rule.
2. Identify source and target tables/files.
3. Validate record-level completeness.
4. Validate transformation and calculation logic.
5. Reconcile aggregate totals.
6. Validate exceptions and duplicates.
7. Document PASS/FAIL evidence.
