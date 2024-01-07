SELECT * FROM students;
SELECT first_name, last_name FROM students WHERE age > 20;
SELECT first_name, last_name, grade FROM students ORDER BY CASE
    WHEN Note = 'A+' THEN 1
    WHEN Note = 'A' THEN 2
    WHEN Note = 'B+' THEN 3
    WHEN Note = 'B' THEN 4
    WHEN Note = 'C+' THEN 5
    WHEN Note = 'C' THEN 6
    ELSE 7
END (DESC);