import pandas as pd

data = {
    'name':["Arnav","Sara","Ansh","Sarvesh"],
    'age':[12,12,19,20],
    'salary':[12000,12900,20000,80000]
}
df = pd.DataFrame(data)

group = df.groupby(['age','name'])['salary'].sum()
print(group)