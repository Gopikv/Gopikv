-- Financial year starts on April 1.
SELECT
    LoanID,
    CustomerID,
    DisbursementDate,
    CASE
        WHEN MONTH(DisbursementDate) >= 4 THEN YEAR(DisbursementDate)
        ELSE YEAR(DisbursementDate) - 1
    END AS FinancialYearStart,
    CONCAT(
        CASE WHEN MONTH(DisbursementDate) >= 4 THEN YEAR(DisbursementDate) ELSE YEAR(DisbursementDate) - 1 END,
        '-',
        RIGHT(CAST(CASE WHEN MONTH(DisbursementDate) >= 4 THEN YEAR(DisbursementDate) + 1 ELSE YEAR(DisbursementDate) END AS varchar(4)), 2)
    ) AS FinancialYear
FROM LoanData;
