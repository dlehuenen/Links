-- Assignments for a Specific Course
-- Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234'
ORDER BY due_date;

-- Earliest Assignment Due Date
-- Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT course_id, title, min(due_date)
FROM assignments;

-- Latest Assignment Due Date
-- Write a query to find the latest assignment due date in the assignments table.
SELECT course_id, title, max(due_date)
FROM assignments;

-- Assignments Due on a Specific Date
-- Write a query to find the title and course_id of assignments due on 2024-10-08.
SELECT course_id, title, due_date
FROM assignments
WHERE due_date = '2024-10-08';

-- Find All Assignments Due in October
-- Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'
SELECT course_id, title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%'
ORDER by due_date;

-- Find the Most Recent Completed Assignment
-- Write a query to find the most recent due_date of assignments with a status of "Completed".
SELECT course_id, title, max(due_date)
FROM assignments
WHERE status = 'Completed'
and due_date <= '2024-11-15';

-- Count of "Not Started" Assignments
-- Write a query to find the total number of assignments with a status of "Not Started". Remember to use single quotes for strings in SQL.
SELECT count(*)
FROM assignments
WHERE status = 'Not Started';
