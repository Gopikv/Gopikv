-- 1. Record count validation
SELECT 'SOURCE' AS Dataset, COUNT(*) AS RecordCount FROM SourceCustomer
UNION ALL
SELECT 'TARGET', COUNT(*) FROM TargetCustomer;

-- 2. Missing source records
SELECT s.CustomerID
FROM SourceCustomer s
LEFT JOIN TargetCustomer t ON t.CustomerID = s.CustomerID
WHERE t.CustomerID IS NULL;

-- 3. Unexpected target records
SELECT t.CustomerID
FROM TargetCustomer t
LEFT JOIN SourceCustomer s ON s.CustomerID = t.CustomerID
WHERE s.CustomerID IS NULL;

-- 4. Attribute-level reconciliation
SELECT s.CustomerID,
       s.LoanAmount AS SourceLoanAmount,
       t.LoanAmount AS TargetLoanAmount
FROM SourceCustomer s
JOIN TargetCustomer t ON t.CustomerID = s.CustomerID
WHERE s.LoanAmount <> t.LoanAmount;

-- 5. Null validation
SELECT *
FROM TargetCustomer
WHERE CustomerID IS NULL
   OR CustomerName IS NULL
   OR LoanAmount IS NULL;

-- 6. Duplicate validation
SELECT CustomerID, COUNT(*) AS DuplicateCount
FROM TargetCustomer
GROUP BY CustomerID
HAVING COUNT(*) > 1;
