import pandas as pd
data = {
    "name": [
        "Amit Sharma", "Neha Verma", "Rohan Singh", "Priya Nair", "Karan Mehta",
        "Sneha Patil", "Vikram Chauhan", "Ananya Gupta", "Suresh Iyer", "Meera Joshi",
        "Harsh Desai", None, "Aditya Kapoor", "Simran Kaur", "Rajat Tiwari",
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
        51000, None, 45000, 85000, 53000,
        64000, 42000, 70000, None, 66000,
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

print(df.isnull())
# show how much are true and false 
print(df.isnull().sum())
print(df.isna().sum())



print("---------------------------------------------------------------")
print("2nd Task --> Handle Missing value using aggregation ")
print("Fill missing values with zero  ")
# df_filled = df.fillna(0,inplace = True)
# print(df)
print("---------------------------------------------------------------")
print("Fill Mising value with mean and other aggreation")
# df['salary'].fillna(df['salary'].mean(),inplace = True)  ---> this is wrong 
#
# 
# 
#  # Avoid using inplace=True on chained assignment (e.g., df['col'].fillna(..., inplace=True))
# because it may operate on a copy instead of the original DataFrame and can break in future pandas versions.
# Use direct assignment (df['col'] = df['col'].fillna(...)) for safe and predictable behavior.

df['age'] = df['age'].fillna(df['age'].mean())
df['salary'] = df['salary'].fillna(df['salary'].mean())

# this is correct 



print(df)
print("--------------------------------------------------------------")
print("Interpolate")
records = {
    "step": [1, 2, 3, 4, 5, 6, 7],
    "measurement": [10.5, None, 13.2, None, None, 18.0, 19.5]
}

table = pd.DataFrame(records)
print(table)
table["measurement"] = table["measurement"].interpolate(method = "linear")
print(table)

print("-----------------------------------------------------------------------------------------------------------------------------")
# ------------------------------------------------------------
# CREATE SAMPLE TABLES (like SQL tables)
# ------------------------------------------------------------

employees = pd.DataFrame({
    "emp_id": [1, 2, 3, 4],
    "emp_name": ["Amit", "Neha", "Rohan", "Priya"]
})

departments = pd.DataFrame({
    "emp_id": [3, 4, 5],
    "department": ["IT", "HR", "Finance"]
})

print("Employees Table:")
print(employees)
print("\nDepartments Table:")
print(departments)

# ------------------------------------------------------------
# 1️⃣ MERGE → SQL-STYLE JOINS
# merge() works like SQL JOIN using a common key
# ------------------------------------------------------------

# INNER JOIN
# SQL: SELECT * FROM employees INNER JOIN departments ON emp_id
inner_join = pd.merge(employees, departments, on="emp_id", how="inner")
print("\nINNER JOIN RESULT:")
print(inner_join)

# LEFT JOIN
# SQL: SELECT * FROM employees LEFT JOIN departments ON emp_id
left_join = pd.merge(employees, departments, on="emp_id", how="left")
print("\nLEFT JOIN RESULT:")
print(left_join)

# RIGHT JOIN
# SQL: SELECT * FROM employees RIGHT JOIN departments ON emp_id
right_join = pd.merge(employees, departments, on="emp_id", how="right")
print("\nRIGHT JOIN RESULT:")
print(right_join)

# FULL OUTER JOIN
# SQL: SELECT * FROM employees FULL OUTER JOIN departments ON emp_id
outer_join = pd.merge(employees, departments, on="emp_id", how="outer")
print("\nFULL OUTER JOIN RESULT:")
print(outer_join)

# ------------------------------------------------------------
# 2️⃣ JOIN METHOD → INDEX-BASED JOIN
# Used when the joining key is the index
# Cleaner but less flexible than merge()
# ------------------------------------------------------------

employees_indexed = employees.set_index("emp_id")
departments_indexed = departments.set_index("emp_id")

# LEFT JOIN using index
index_join = employees_indexed.join(departments_indexed, how="left")
print("\nINDEX-BASED JOIN RESULT:")
print(index_join)

# ------------------------------------------------------------
# 3️⃣ CONCAT → SQL UNION / APPEND
# concat() stacks tables vertically or horizontally
# ------------------------------------------------------------

# Vertical concatenation (row-wise)
# SQL: UNION ALL
team_a = pd.DataFrame({
    "emp_id": [1, 2],
    "emp_name": ["Amit", "Neha"]
})

team_b = pd.DataFrame({
    "emp_id": [3, 4],
    "emp_name": ["Rohan", "Priya"]
})
print(team_a)
print(team_b)


vertical_concat = pd.concat([team_a, team_b], ignore_index=True)
print("\nVERTICAL CONCAT (UNION ALL):")
print(vertical_concat)

# Horizontal concatenation (column-wise)
metrics_1 = pd.DataFrame({"metric_a": [10, 20, 30]})
metrics_2 = pd.DataFrame({"metric_b": ["X", "Y", "Z"]})
print(metrics_1)
print(metrics_2)
horizontal_concat = pd.concat([metrics_1, metrics_2], axis=1)
print("\nHORIZONTAL CONCAT:")
print(horizontal_concat)

# ------------------------------------------------------------
# SUMMARY (IMPORTANT)
# ------------------------------------------------------------

# merge()  → SQL-style joins (INNER, LEFT, RIGHT, FULL)
# join()   → Index-based join (cleaner when index is key)
# concat() → UNION / APPEND (row-wise or column-wise)