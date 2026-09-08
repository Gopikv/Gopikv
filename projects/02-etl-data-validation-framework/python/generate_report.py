from pathlib import Path
import pandas as pd
from etl_validation import validate

BASE = Path(__file__).resolve().parent
source = pd.read_csv(BASE / "../data/source_customer.csv")
target = pd.read_csv(BASE / "../data/target_customer.csv")

result = validate(source, target)
output = BASE / "validation_results.csv"
result.to_csv(output, index=False)
print(f"Validation report generated: {output}")
print(result.to_string(index=False))
