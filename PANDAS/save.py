import pandas as pd

data = {
    "Name":["Ram","Sahil","Shiv"],
    "Age":[12,23,45],
    "City":["NGP","HYD","JBP"]
}
df = pd.DataFrame(data)
print(df)
# df.to_csv("job.csv",index=False)
# df.to_excel("jobe.xlsx",index=False)
df.to_json("jobj.json",index=False)