
-- demo_SQLQuiz201.sql
-- By : Chris Woolery
-- Description : sample data for SQL 201 Quiz
-- Type : SQL table only, not persistant
-- Updated :


 
SELECT *
FROM (VALUES
    (1, 0.99, '2023-02-15 00:00:00'),
    (2, 9.99, '2023-02-15 07:15:00'),
    (3, 15.99, '2023-02-15 23:01:15'),
    (4, 7.99, '2023-02-16 14:22:09')
) AS purchases(id, amount, dt)
 
