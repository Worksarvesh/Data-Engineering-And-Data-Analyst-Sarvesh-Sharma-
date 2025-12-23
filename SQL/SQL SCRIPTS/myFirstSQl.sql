USE test_db;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    gender ENUM('Male','Female','Others'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name,email,gender,date_of_birth)
VALUES
('Amit Sharma', 'amit@gmail.com', 'Male', '1999-05-12'),
('Priya Singh', 'priya@gmail.com', 'Female', '2000-08-21'),
('Rahul Verma', 'rahul@gmail.com', 'Male', '1998-01-30'),
('Neha Gupta', 'neha@gmail.com', 'Female', '2001-11-15'),
('Alex Roy', 'alex@gmail.com', 'Others', '1997-06-18');

-- Rename table from user to customers
RENAME TABLE users to customers;
RENAME TABLE customers to users;
SELECT * FROM users;
