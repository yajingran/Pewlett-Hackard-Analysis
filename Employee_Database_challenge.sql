-- Challenge
SELECT e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
tt.title,
tt.from_date,
tt.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS tt
ON (e.emp_no = tt.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC
;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;
