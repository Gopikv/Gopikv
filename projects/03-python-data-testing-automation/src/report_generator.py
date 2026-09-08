from pathlib import Path
import pandas as pd
from data_validator import load_csv, compare_datasets

BASE = Path(__file__).resolve().parent.parent
source = load_csv(str(BASE / "data/source.csv"))
target = load_csv(str(BASE / "data/target.csv"))

results = pd.DataFrame(compare_datasets(source, target))
output = BASE / "validation_report.csv"
results.to_csv(output, index=False)

print(results.to_string(index=False))
print(f"\nReport: {output}")
