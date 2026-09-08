# Test Scenarios

| TC ID | Scenario | Expected Result |
|---|---|---|
| TC01 | Compare source and target record counts | Counts reconcile or discrepancy is reported |
| TC02 | Find source records missing in target | All missing target records are returned |
| TC03 | Find target records missing in source | Unexpected target records are returned |
| TC04 | Compare common records column by column | All data mismatches are identified |
| TC05 | Check duplicate business keys | Duplicate keys are reported |
| TC06 | Reconcile total loan amount | Source and target totals match or variance is reported |
| TC07 | Validate mandatory customer name | Null/blank names are rejected |
| TC08 | Validate loan amount | Invalid/non-positive values are rejected |
| TC09 | Validate status domain | Only supported status values are accepted |
