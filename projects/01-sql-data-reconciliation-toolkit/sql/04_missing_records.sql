-- Records present in source but missing in target
SELECT s.*
FROM SourceCustomer s
LEFT JOIN TargetCustomer t ON t.CustomerID = s.CustomerID
WHERE t.CustomerID IS NULL;

-- Records present in target but missing in source
SELECT t.*
FROM TargetCustomer t
LEFT JOIN SourceCustomer s ON s.CustomerID = t.CustomerID
WHERE s.CustomerID IS NULL;
