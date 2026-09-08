# ETL Validation Test Cases

| TC ID | Test Scenario | Test Step | Expected Result |
|---|---|---|---|
| ETL-001 | Record count validation | Compare source and target record counts | Counts match or discrepancy is reported |
| ETL-002 | Primary key validation | Compare unique CustomerID values | No missing or unexpected keys |
| ETL-003 | Duplicate validation | Group target data by CustomerID | No duplicate business keys |
| ETL-004 | Mandatory field validation | Check CustomerID, CustomerName and LoanAmount for nulls | Mandatory fields contain valid values |
| ETL-005 | Transformation validation | Compare LoanAmount between source and target | Transformation follows expected rule |
| ETL-006 | Data reconciliation | Compare source and target totals | Aggregates reconcile |
| ETL-007 | Business rule validation | Validate status and positive loan amount | Invalid records are identified |
| ETL-008 | Exception reporting | Execute validation engine | PASS/FAIL results are generated |
