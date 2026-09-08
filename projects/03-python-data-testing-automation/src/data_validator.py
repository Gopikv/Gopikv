from pathlib import Path
import pandas as pd

REQUIRED_COLUMNS = ["CustomerID", "CustomerName", "LoanAmount", "Status"]


def load_csv(path: str) -> pd.DataFrame:
    return pd.read_csv(path)


def validate_schema(df: pd.DataFrame) -> bool:
    return all(column in df.columns for column in REQUIRED_COLUMNS)


def compare_datasets(source: pd.DataFrame, target: pd.DataFrame) -> list[dict]:
    results = []

    results.append({
        "Test": "Record Count",
        "Status": "PASS" if len(source) == len(target) else "FAIL",
        "Details": f"Source={len(source)}, Target={len(target)}",
    })

    duplicate_count = int(target.duplicated("CustomerID").sum())
    results.append({
        "Test": "Duplicate CustomerID",
        "Status": "PASS" if duplicate_count == 0 else "FAIL",
        "Details": f"Duplicates={duplicate_count}",
    })

    missing = sorted(set(source.CustomerID) - set(target.CustomerID))
    unexpected = sorted(set(target.CustomerID) - set(source.CustomerID))
    results.append({
        "Test": "Key Reconciliation",
        "Status": "PASS" if not missing and not unexpected else "FAIL",
        "Details": f"Missing={missing}, Unexpected={unexpected}",
    })

    common = source.merge(target, on="CustomerID", suffixes=("_source", "_target"))
    mismatch_rows = []
    for column in ["CustomerName", "LoanAmount", "Status"]:
        mismatch_rows.extend(common.loc[
            common[f"{column}_source"].fillna("<NULL>") != common[f"{column}_target"].fillna("<NULL>"),
            "CustomerID"
        ].tolist())

    results.append({
        "Test": "Column Reconciliation",
        "Status": "PASS" if not mismatch_rows else "FAIL",
        "Details": f"Mismatched CustomerIDs={sorted(set(mismatch_rows))}",
    })

    mandatory_nulls = int(target[REQUIRED_COLUMNS].isnull().sum().sum())
    results.append({
        "Test": "Mandatory Fields",
        "Status": "PASS" if mandatory_nulls == 0 else "FAIL",
        "Details": f"NullValues={mandatory_nulls}",
    })

    return results
