-- Daniel Le Huenen
-- 101546410

-- 1. Write a query to list all courses, concatenating the course_name and semester fields with a hyphen between them. Like this: "IT Essentials - 2024-3"
SELECT concat(course_name, ' - ', semester)
FROM courses;

-- 2. Write a query to find all courses that have a lab session scheduled on Friday. Include only the course_id, course_name, and lab_time in the result.
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time like 'Fri%';

-- 3. Write a query to list all assignments with a due date after the current date.
SELECT *
FROM assignments
WHERE due_date > '2024-11-22';

-- 4. Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed"). Hint: GROUP BY
SELECT status, count(*)
FROM assignments
GROUP BY status;

-- 5. Write a query to find the course with the longest course_name. Use the length() function to compare the lengths.
select length(course_name) AS course_name_length, *
From courses 
ORDER BY course_name_length DESC;

-- 6. Write a query to return a list of all course names in uppercase.
select upper(course_name)
From courses;

-- 7. Write a query to list the titles of all assignments that are due in September, regardless of year. Use the LIKE operator to filter due_date.
select title, due_date
From assignments
Where due_date like '%-09-%';

-- 8. Write a query to find all assignments where the due_date is missing. Note, there are no assignments with NULL due_dates initially, but one was added if you ran the INSERT statement in the examples above. Hint: due_date IS NULL
select *
from assignments
where due_date is NULL;
