import pandas as pd
from src.data_validator import validate_schema, compare_datasets


def test_schema_validation():
    df = pd.DataFrame(columns=["CustomerID", "CustomerName", "LoanAmount", "Status"])
    assert validate_schema(df)


def test_reconciliation_detects_difference():
    source = pd.DataFrame({
        "CustomerID": [1],
        "CustomerName": ["A"],
        "LoanAmount": [100],
        "Status": ["ACTIVE"],
    })
    target = pd.DataFrame({
        "CustomerID": [1],
        "CustomerName": ["A"],
        "LoanAmount": [90],
        "Status": ["ACTIVE"],
    })

    results = compare_datasets(source, target)
    column_check = next(r for r in results if r["Test"] == "Column Reconciliation")
    assert column_check["Status"] == "FAIL"
