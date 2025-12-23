-- SQL JOINs in MySQL--
use test_db;
CREATE TABLE userss (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO userss (id, name)
VALUES
(1, 'Aarav'),
(2, 'Sneha'),
(3, 'Raj');
CREATE TABLE addresses (
    id INT PRIMARY KEY,
    user_id INT,
    city VARCHAR(50)
);
INSERT INTO addresses (id, user_id, city)
VALUES
(1, 1, 'Mumbai'),
(2, 2, 'Kolkata'),
(3, 4, 'Delhi');
 SELECT * FROM userss;
SELECT * FROM addresses;

SELECT userss.name, addresses.city
FROM userss
INNER JOIN addresses ON userss.id = addresses.user_id;

SELECT userss.name, addresses.city
FROM userss
LEFT JOIN addresses ON userss.id = addresses.user_id;



SELECT userss.name, addresses.city
FROM userss
RIGHT JOIN addresses ON userss.id = addresses.user_id;



-- -------- SELF JOIN -----------------------
ALTER TABLE users ADD COLUMN refered_id INT;
UPDATE users SET refered_id = 1 WHERE id IN (2, 3); -- User 1 referred Users 2 3

UPDATE users SET refered_id = 2 WHERE id = 4; -- User 2 referred User 4
SELECT * FROM users;

SELECT
 a.id,
 a.name AS user_name,
 b.name AS referred_by
FROM users a
INNER JOIN users b ON a.refered_id = b.id;

-- 2 Priya 1(Alica)
-- 3 Rahul 1(alica)
-- 4 neha  2 (Priya)








