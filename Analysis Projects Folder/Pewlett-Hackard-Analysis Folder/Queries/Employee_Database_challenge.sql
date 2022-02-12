--Query to create Retirement Titles table
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

--Query to create Unique Titles table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(emp_no) emp_no, 
	first_name, 
	last_name, 
	title 
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

--Query to create Retiring Titles table
SELECT COUNT(emp_no) as emp_count, 
        title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY emp_count DESC;

--Query to create Mentorship Eligibility table
SELECT DISTINCT ON (_e.emp_no) _e.emp_no, 
        _e.first_name, 
        _e.last_name, 
	_e.birth_date,
        _xed.from_date, 
        _xed.to_date, 
        _t.title
INTO mentorship_eligibilty
FROM titles as _t
	INNER JOIN employees as _e
	ON _t.emp_no = _e.emp_no
	INNER JOIN xref_employee_department as _xed
	ON _e.emp_no = _xed.emp_no
WHERE (_e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	and _t.to_date = '9999-01-01';