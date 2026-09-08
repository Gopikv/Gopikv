import pandas as pd

SOURCE = "../data/source_customer.csv"
TARGET = "../data/target_customer.csv"
KEY = "CustomerID"


def validate(source: pd.DataFrame, target: pd.DataFrame) -> pd.DataFrame:
    results = []

    results.append({
        "test": "Record Count",
        "source": len(source),
        "target": len(target),
        "status": "PASS" if len(source) == len(target) else "FAIL",
    })

    duplicate_count = target.duplicated(KEY).sum()
    results.append({
        "test": "Duplicate Key",
        "source": "-",
        "target": int(duplicate_count),
        "status": "PASS" if duplicate_count == 0 else "FAIL",
    })

    mandatory_nulls = target[["CustomerID", "CustomerName", "LoanAmount"]].isnull().sum().sum()
    results.append({
        "test": "Mandatory Null Check",
        "source": "-",
        "target": int(mandatory_nulls),
        "status": "PASS" if mandatory_nulls == 0 else "FAIL",
    })

    source_ids = set(source[KEY])
    target_ids = set(target[KEY])
    missing = source_ids - target_ids
    unexpected = target_ids - source_ids
    results.append({
        "test": "Source-to-Target Keys",
        "source": len(source_ids),
        "target": len(target_ids),
        "status": "PASS" if not missing and not unexpected else "FAIL",
    })

    common = source.merge(target, on=KEY, suffixes=("_source", "_target"))
    amount_mismatch = (common["LoanAmount_source"] != common["LoanAmount_target"]).sum()
    results.append({
        "test": "Loan Amount Transformation",
        "source": len(common),
        "target": int(amount_mismatch),
        "status": "PASS" if amount_mismatch == 0 else "FAIL",
    })

    return pd.DataFrame(results)


if __name__ == "__main__":
    source = pd.read_csv(SOURCE)
    target = pd.read_csv(TARGET)
    print(validate(source, target).to_string(index=False))
