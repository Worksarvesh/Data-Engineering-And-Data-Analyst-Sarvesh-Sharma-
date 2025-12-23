-- FILTERING ROWS
use test_db;
CREATE TABLE data (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(200) NOT NULL,
     email VARCHAR(200) UNIQUE NOT NULL,
     gender ENUM('Male','Female','Others'),
     date_of_birth DATE,
     create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
INSERT INTO data (name, email, gender, date_of_birth)
VALUES
('Amit Sharma','amit1@gmail.com','Male','1999-01-12'),
('Priya Singh','priya1@gmail.com','Female','2000-02-18'),
('Rahul Verma','rahul1@gmail.com','Male','1998-03-22'),
('Neha Gupta','neha1@gmail.com','Female','2001-04-10'),
('Alex Roy','alex1@gmail.com','Others','1997-05-30'),

('Rohit Mehta','rohit1@gmail.com','Male','1999-06-15'),
('Anjali Patel','anjali1@gmail.com','Female','2000-07-08'),
('Karan Malhotra','karan1@gmail.com','Male','1998-08-19'),
('Sneha Iyer','sneha1@gmail.com','Female','2001-09-25'),
('Sam Wilson','sam1@gmail.com','Others','1997-10-11'),

('Vikas Yadav','vikas1@gmail.com','Male','1999-11-03'),
('Pooja Nair','pooja1@gmail.com','Female','2000-12-14'),
('Arjun Rao','arjun1@gmail.com','Male','1998-01-27'),
('Kriti Kapoor','kriti1@gmail.com','Female','2001-02-06'),
('Taylor Smith','taylor1@gmail.com','Others','1997-03-17'),

('Suresh Kumar','suresh1@gmail.com','Male','1999-04-21'),
('Riya Chatterjee','riya1@gmail.com','Female','2000-05-09'),
('Mohit Jain','mohit1@gmail.com','Male','1998-06-28'),
('Isha Malviya','isha1@gmail.com','Female','2001-07-13'),
('Jordan Lee','jordan1@gmail.com','Others','1997-08-04'),

('Nikhil Bansal','nikhil1@gmail.com','Male','1999-09-16'),
('Ayesha Khan','ayesha1@gmail.com','Female','2000-10-20'),
('Deepak Soni','deepak1@gmail.com','Male','1998-11-29'),
('Meera Joshi','meera1@gmail.com','Female','2001-12-07'),
('Chris Brown','chris1@gmail.com','Others','1997-01-18'),

('Ravi Mishra','ravi1@gmail.com','Male','1999-02-26'),
('Komal Arora','komal1@gmail.com','Female','2000-03-12'),
('Abhishek Tiwari','abhishek1@gmail.com','Male','1998-04-05'),
('Shalini Das','shalini1@gmail.com','Female','2001-05-23'),
('Morgan Hill','morgan1@gmail.com','Others','1997-06-14'),

('Aman Saxena','aman1@gmail.com','Male','1999-07-19'),
('Nisha Agarwal','nisha1@gmail.com','Female','2000-08-27'),
('Yash Kulkarni','yash1@gmail.com','Male','1998-09-09'),
('Divya Menon','divya1@gmail.com','Female','2001-10-31'),
('Jamie Clark','jamie1@gmail.com','Others','1997-11-22'),

('Harsh Vardhan','harsh1@gmail.com','Male','1999-12-02'),
('Sonali Pawar','sonali1@gmail.com','Female','2000-01-15'),
('Kunal Shah','kunal1@gmail.com','Male','1998-02-24'),
('Emma Taylor','emma1@gmail.com','Others','1997-03-08');
-- equal to
SELECT * FROM data WHERE gender = 'Male';
-- not equal to
SELECT * FROM data WHERE gender <> 'Male';

-- less or greater than
SELECT * FROM data WHERE date_of_birth < '2000-01-01';

-- checking null or not null
SELECT * FROM data WHERE date_of_birth is NOT NULL;
SELECT * FROM data WHERE date_of_birth is NULL;

-- BETWEEN
SELECT * FROM data WHERE date_of_birth BETWEEN '1998-01-01' AND '2000-09-09';

-- IN -- where includes gender Male and others also 
SELECT * FROM data WHERE gender IN ('Male','Others');

-- AND
SELECT * FROM data WHERE id < 10 AND gender = 'Male';

-- OR
SELECT * FROM data WHERE id < 2 OR gender = 'Male';


-- LIKE Pattern Tracer Like Staring with and end with and contains
SELECT * FROM data WHERE name LIKE 'A%'; -- Starts with A 
SELECT * FROM data WHERE name LIKE '%t'; -- ends with T
SELECT * FROM data WHERE name LIKE '%s%'; -- contains s

-- ORDER BY 
SELECT * FROM data ORDER BY name ASC,date_of_birth DESC;

-- LIMIT 
SELECT * FROM data LIMIT 5 OFFSET 2;
SELECT * FROM data ORDER BY create_at DESC LIMIT 10;




