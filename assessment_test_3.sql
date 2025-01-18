
-- This database should have two tables: teachers and students.

-- The teachers table should have columns for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.
/*
CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR (100) NOT NULL,
	last_name VARCHAR (100) NOT NULL,
	homeroom_number SMALLINT,
	department VARCHAR(50),
	teacher_email VARCHAR (254) UNIQUE NOT NULL,
	teacher_phone BIGINT UNIQUE
)
*/

/*
-- The students table should have columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR (100) NOT NULL,
	last_name VARCHAR (100) NOT NULL,
	homeroom_number SMALLINT,
	department SMALLINT,
	student_phone VARCHAR(20) UNIQUE NOT NULL, -- We must have to contact in case of an emergency
	student_email VARCHAR (254) UNIQUE,
	grad_year INTEGER NOT NULL
);
*/

/*
-- Once you've made the tables, insert a student named Mark Watney
INSERT INTO students(
student_id, first_name, last_name, homeroom_number, student_phone, grad_year)
VALUES
(1, 'Mark', 'Watney', 5, '777-555-1234', 2035)
;
*/
/*
-- Then insert a teacher names Jonas Salk
INSERT INTO teachers(
teacher_id, first_name, last_name, homeroom_number, department, teacher_email, teacher_phone
)
VALUES
(1, 'Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321')
;
*/