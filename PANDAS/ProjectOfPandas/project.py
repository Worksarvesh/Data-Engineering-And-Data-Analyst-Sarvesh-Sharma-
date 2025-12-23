import pandas as pd
df = pd.read_csv("HR_Analytics.csv",encoding="Latin1")
print(df.shape)
print(df.columns)
df.info()
print(df.describe())