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

# updating location 
# df.loc[row_index,'column_name'] = new value
df.loc[9,'name'] = 'Sarvesh Sharma'
print('new modified')
print(df)