SELECT 'Source' AS DataSet,
       COUNT(*) AS RecordCount,
       SUM(LoanAmount) AS TotalLoanAmount
FROM SourceCustomer
UNION ALL
SELECT 'Target',
       COUNT(*),
       SUM(LoanAmount)
FROM TargetCustomer;

SELECT
    (SELECT SUM(LoanAmount) FROM SourceCustomer) AS SourceTotal,
    (SELECT SUM(LoanAmount) FROM TargetCustomer) AS TargetTotal,
    (SELECT SUM(LoanAmount) FROM SourceCustomer) -
    (SELECT SUM(LoanAmount) FROM TargetCustomer) AS Difference;
