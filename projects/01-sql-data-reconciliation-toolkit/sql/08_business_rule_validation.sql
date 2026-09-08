-- Example banking validation rules
SELECT CustomerID, CustomerName, LoanAmount, Status
FROM TargetCustomer
WHERE LoanAmount <= 0
   OR CustomerName IS NULL
   OR LTRIM(RTRIM(CustomerName)) = ''
   OR Status NOT IN ('ACTIVE','CLOSED');

-- Active customers should have a positive loan amount
SELECT *
FROM TargetCustomer
WHERE Status = 'ACTIVE'
  AND LoanAmount <= 0;
