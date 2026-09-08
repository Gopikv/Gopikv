-- Duplicate business keys in source
SELECT CustomerID, COUNT(*) AS DuplicateCount
FROM SourceCustomer
GROUP BY CustomerID
HAVING COUNT(*) > 1;

-- Duplicate business keys in target
SELECT CustomerID, COUNT(*) AS DuplicateCount
FROM TargetCustomer
GROUP BY CustomerID
HAVING COUNT(*) > 1;
