# #  Sorting Data 
# # used to sort 1 col at a time 
# df.sort_values(by="Column_name",True/False,inplace= True)-- used to place new element at new place
#                                    |           
#                                 true for ascending 
#                                 false for descending
import pandas as pd
data = {
   
    "age": [
        28, 25, 32, 29, 35,
        26, 30, 24, 40, 27,
        31, 23, 34, 28, 33,
        26, 37, 30, 29, 27
    ],
    
    "salary": [
        52000, 48000, 68000, 59000, 72000,
        51000, 27373, 45000, 85000, 53000,
        64000, 42000, 70000, 837377, 66000,
        50000, 78000, 62000, 58000, 54000
    ],
    
   
}
df = pd.DataFrame(data)
print(df)
df.sort_values(by='salary',ascending=True,inplace=True)
print(df)