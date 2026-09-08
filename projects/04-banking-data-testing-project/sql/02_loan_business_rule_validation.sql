-- Validate common loan-level business rules.
SELECT
    LoanID,
    LoanAmount,
    PrincipalOutstanding,
    TotalAmountOverdue,
    RecoveredAmount,
    CASE
        WHEN LoanAmount < 0 THEN 'FAIL - Negative Loan Amount'
        WHEN PrincipalOutstanding < 0 THEN 'FAIL - Negative Outstanding'
        WHEN TotalAmountOverdue < 0 THEN 'FAIL - Negative Overdue'
        WHEN RecoveredAmount < 0 THEN 'FAIL - Negative Recovery'
        WHEN RecoveredAmount > LoanAmount THEN 'FAIL - Recovery Exceeds Loan Amount'
        WHEN PrincipalOutstanding > LoanAmount THEN 'FAIL - Outstanding Exceeds Loan Amount'
        ELSE 'PASS'
    END AS ValidationResult
FROM LoanData;

-- Validate recovery percentage.
SELECT
    LoanID,
    LoanAmount,
    RecoveredAmount,
    CAST(
        CASE WHEN LoanAmount = 0 THEN 0
             ELSE (RecoveredAmount * 100.0 / LoanAmount)
        END AS decimal(10,2)
    ) AS RecoveryPercentage
FROM LoanData;
