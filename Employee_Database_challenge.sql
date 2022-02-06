SELECT _e.emp_no, 
        first_name, 
        last_name, 
        title, 
        from_date, 
        to_date
INTO retirement_titles
FROM titles as _t
	INNER JOIN employees as _e
	ON _t.emp_no = _e.emp_no
WHERE (_e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(emp_no) emp_no, 
	first_name, 
	last_name, 
	title 
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;


SELECT COUNT(emp_no) as emp_count, 
        title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY emp_count DESC;