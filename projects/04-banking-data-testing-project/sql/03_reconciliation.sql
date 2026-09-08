-- Aggregate reconciliation between detailed loan records and an expected reporting layer.
-- Replace ExpectedLoanSummary with the target/report table in a real project.
SELECT
    SUM(LoanAmount) AS TotalLoanAmount,
    SUM(PrincipalOutstanding) AS TotalPrincipalOutstanding,
    SUM(TotalAmountOverdue) AS TotalOverdue,
    SUM(RecoveredAmount) AS TotalRecovered
FROM LoanData;

-- Duplicate LoanID validation.
SELECT LoanID, COUNT(*) AS RecordCount
FROM LoanData
GROUP BY LoanID
HAVING COUNT(*) > 1;

-- Mandatory field validation.
SELECT *
FROM LoanData
WHERE LoanID IS NULL
   OR CustomerID IS NULL
   OR DisbursementDate IS NULL
   OR LoanAmount IS NULL;
