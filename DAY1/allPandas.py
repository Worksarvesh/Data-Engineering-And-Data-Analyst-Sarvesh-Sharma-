import pandas as pd
data = {
    "name": [
        "Amit Sharma", "Neha Verma", "Rohan Singh", "Priya Nair", "Karan Mehta",
        "Sneha Patil", "Vikram Chauhan", "Ananya Gupta", "Suresh Iyer", "Meera Joshi",
        "Harsh Desai", "Pooja Reddy", "Aditya Kapoor", "Simran Kaur", "Rajat Tiwari",
        "Tanvi Shukla", "Manish Pandey", "Divya Saxena", "Rahul Mishra", "Ishita Dholakia"
    ],
    "age": [
        28, 25, 32, 29, 35,
        26, 30, 24, 40, 27,
        31, 23, 34, 28, 33,
        26, 37, 30, 29, 27
    ],
    "salary": [
        52000, 48000, 68000, 59000, 72000,
        51000, 61000, 45000, 85000, 53000,
        64000, 42000, 70000, 56000, 66000,
        50000, 78000, 62000, 58000, 54000
    ],
    "performance_rating": [
        4.2, 3.8, 4.5, 4.0, 4.7,
        3.9, 4.1, 3.6, 4.8, 4.0,
        4.3, 3.4, 4.4, 3.9, 4.2,
        3.7, 4.6, 4.1, 4.0, 3.8
    ]
}
df = pd.DataFrame(data)
print(df)
print("head of the dataframe")
print(df.head(3))   
print("tail of the dataframe")
print(df.tail(3))
print("------------------------------------------------------------------------------------------------")
print("info of the dataframe")
print(df.info())
print("------------------------------------------------------------------------------------------------")
print("describe of the dataframe")
print(df.describe())
print("------------------------------------------------------------------------------------------------")
print("shape of the dataframe")
print(df.shape)
print("------------------------------------------------------------------------------------------------")
print("columns of the dataframe")
print(df.columns)
print("------------------------------------------------------------------------------------------------")

print("------------------------------------------------------------------------------------------------")

print('selecting column')
name = df['name']
print(name)
print("------------------------------------------------------------------------------------------------")
print('selecting multiple columns')
subset = df[["name","age"]]
print(subset)
print("------------------------------------------------------------------------------------------------")


print('filtering rows')
print('by index')

print(df.loc[0,'name']) 
# ---> this synatx used to select row by index and column by name
print(df.iloc[0,0])
# ---> this synatx used to select row by index and column by index
print(df.iloc[0:5,1]) # ---> this synatx used to select row by index and column by index
print(df.iloc[0:5,1:3]) # ---> this synatx used to select row by index and column by index
print("------------------------------------------------------------------------------------------------")

print('By Condition')
print(df.loc[0]) # row with index label 0
print(df.loc[0:5]) # rows with index labels from 0 to 5

print("------------------------------------------------------------------------------------------------")
print("Salary greater than 50000")
print(df[df['salary']>50000])



print("------------------------------------------------------------------------------------------------")
print('add new column')
df['bonus'] = df['salary']*0.15
print(df)
df['Uppercase Name']=df['name'].str.upper()
print(df)
print("------------------------------------------------------------------------------------------------")
print('updating column')
df.loc[0,'name'] = 'Sarvesh Sharma'
df['salary'] = df['bonus'] + df['salary']
print(df)
print("------------------------------------------------------------------------------------------------")
print('deleting column')
df = df.drop(columns=['bonus','Uppercase Name'])
print(df)
print("------------------------------------------------------------------------------------------------")
df = df.drop('performance_rating',axis=1)
print(df)
print("------------------------------------------------------------------------------------------------")
print('deleting row')
df = df.drop(index=[0,1,2])
print(df)
df = df.drop(10,axis=0)
print(df)
print("------------------------------------------------------------------------------------------------")


newdata = {
    "name": [
        "Amit Sharma", "Neha Verma", "Rohan Singh", "Priya Nair", "Karan Mehta",
        "Sneha Patil", "Vikram Chauhan", "Ananya Gupta", "Suresh Iyer", "Meera Joshi",
        "Harsh Desai", "Pooja Reddy", "Aditya Kapoor", "Simran Kaur", "Rajat Tiwari",
        "Tanvi Shukla", "Manish Pandey", "Divya Saxena", "Rahul Mishra", "Ishita Dholakia"
    ],
    "age": [
        28, 25, 32, 29, 35,
        26, 30, 24, 40, 27,
        31, 23, 34, 28, 33,
        26, 37, 30, 29, 27
    ],
    "salary": [
        52000, 48000, 68000, 59000, 72000,
        51000, 61000, 45000, 85000, 53000,
        64000, 42000, 70000, 56000, 66000,
        50000, 78000, 62000, 58000, 54000
    ],
    "performance_rating": [
        4.2, 3.8, 4.5, 4.0, 4.7,
        3.9, 4.1, 3.6, 4.8, 4.0,
        4.3, 3.4, 4.4, 3.9, 4.2,
        3.7, 4.6, 4.1, 4.0, 3.8
    ]           
}
df2 = pd.DataFrame(newdata)
print('sorting data')
print(df2.sort_values(by='salary',ascending=True,inplace=True))
print(df2)
print("------------------------------------------------------------------------------------------------")
print('sorting data by multiple columns')
print(df2.sort_values(by=['salary','age'],ascending=False,inplace=True))
print(df2)
print("------------------------------------------------------------------------------------------------")
print('sorting data by multiple columns')
print(df2.sort_values(by=['salary','age'],ascending=False,inplace=True))
print(df2)
print("------------------------------------------------------------------------------------------------")

print("aggregation")
print("Sum of salary")
print(df2['salary'].sum())  
print("Mean of salary")
print(df2['salary'].mean())
print("Median of salary")
print(df2['salary'].median())
print("Min of salary")
print(df2['salary'].min())
print("Max of salary")
print(df2['salary'].max())
print("Count of salary")
print(df2['salary'].count())
print("Std of salary")
print(df2['salary'].std())
print("Var of salary")
print(df2['salary'].var())
print("Skew of salary")
print(df2['salary'].skew())
print("Kurt of salary")
print(df2['salary'].kurt())
print("Mode of salary")
print(df2['salary'].mode())
print("------------------------------------------------------------------------------------------------")
print("Grouping data")
print("Sum of salary by age")

print(df2.groupby('age')['salary'].sum())   
print("Mean of salary by age")
print(df2.groupby('age')['salary'].mean())
print("Median of salary by age")
print(df2.groupby('age')['salary'].median())
print("Min of salary by age")
print(df2.groupby('age')['salary'].min())
print("Max of salary by age")
print(df2.groupby('age')['salary'].max())
print("Count of salary by age")
print(df2.groupby('age')['salary'].count())
print("Std of salary by age")
print(df2.groupby('age')['salary'].std())
print("Var of salary by age")
print(df2.groupby('age')['salary'].var())

print("------------------------------------------------------------------------------------------------")

print("Question : print head of grouping of age and salary")
# Add a column with total salary per age group for each row
# use of transform is to add a column with the total salary per age group for each row
df2['finalanswer'] = df2.groupby('age')['salary'].transform('sum')

print(df2.head(1))


print("------------------------------------------------------------------------------------------------")


