SELECT
    s.CustomerID,
    s.CustomerName AS SourceName,
    t.CustomerName AS TargetName,
    s.LoanAmount AS SourceLoanAmount,
    t.LoanAmount AS TargetLoanAmount,
    s.Status AS SourceStatus,
    t.Status AS TargetStatus
FROM SourceCustomer s
INNER JOIN TargetCustomer t ON t.CustomerID = s.CustomerID
WHERE ISNULL(s.CustomerName,'') <> ISNULL(t.CustomerName,'')
   OR ISNULL(s.LoanAmount,0) <> ISNULL(t.LoanAmount,0)
   OR ISNULL(s.Status,'') <> ISNULL(t.Status,'')
   OR ISNULL(s.UpdatedDate,'1900-01-01') <> ISNULL(t.UpdatedDate,'1900-01-01');
