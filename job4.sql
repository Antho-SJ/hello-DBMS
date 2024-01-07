SELECT * FROM nobel WHERE yr = '1986';
SELECT * FROM nobel WHERE yr = '1967' AND subject = 'Literature';
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';
SELECT * FROM nobel WHERE subject = 'Literature' AND 1980 < yr <= 1989;
SELECT * FROM nobel WHERE subject = 'Mathématiques';