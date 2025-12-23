import pandas as pd
data = {
    'Time':[1,2,3,4,5]
    ,'Values':[10,20,None,None,50]
}
df = pd.DataFrame(data)
print("Before Interpollution")
print(df)
print("After Interpollution")
df['Values'] = df['Values'].interpolate(method='linear')
print(df)

'''
1- time series data 
2-numeric data with same trends 
3.avoid dropping rows 
'''