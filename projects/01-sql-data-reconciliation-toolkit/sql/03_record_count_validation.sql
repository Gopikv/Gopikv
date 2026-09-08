SELECT 'Source' AS DataSet, COUNT(*) AS RecordCount FROM SourceCustomer
UNION ALL
SELECT 'Target', COUNT(*) FROM TargetCustomer;

SELECT CASE WHEN (SELECT COUNT(*) FROM SourceCustomer) = (SELECT COUNT(*) FROM TargetCustomer)
            THEN 'PASS' ELSE 'FAIL' END AS ValidationResult;
