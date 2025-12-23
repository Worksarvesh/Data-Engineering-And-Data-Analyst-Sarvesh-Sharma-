-- SELF JOIN
USE test_db;
-- we used adminusers

-- ADD new COLUMN 
ALTER TABLE admin_users
ADD COLUMN referred_by_id INT;

UPDATE admin_users
SET referred_by_id = 103
WHERE id IN (102,103);

UPDATE admin_users
SET referred_by_id = 102
WHERE id = 104;
SELECT * FROM admin_users;
SELECT 
    e.name AS employee_name,
    r.name AS referred_by
FROM admin_users e
LEFT JOIN admin_users r
ON e.referred_by_id = r.id;

