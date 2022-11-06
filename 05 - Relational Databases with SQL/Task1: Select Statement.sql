USE mydb;

/* ============================================================================ */
/* SECTION 1: SELECT statements                                                 */
/* ============================================================================ */
SELECT name, capital FROM us_state WHERE name = 'California' -- selecting California state capital
SELECT * FROM us_state WHERE area_size>10000-- selecting size greater than 

/* ---- TASK 1 ---------------------------------------------------------------- */
/* Write an SQL statement to find out what is the state capital of Oregon       */
/* hint: the names of the columns you need are: name and capital                */
/* ---------------------------------------------------------------------------- */

SELECT name, capital FROM us_state WHERE name  = 'Oregon' -- selecting Oregon state capital





/* ============================================================================ */
/* SECTION 2: SELECT statements with pattern matching and sorting               */
/* ============================================================================ */
SELECT * FROM us_state ORDER BY  area_size DESC
SELECT * FROM us_state WHERE name LIKE 'M%'  --starting with letter M
SELECT * FROM us_state WHERE name LIKe 'M%' order by name -- starting with name and sorted





/* ---- TASK 2 ---------------------------------------------------------------- */
/* Write an SQL statement to display all the states with abbreviations that     */
/* start with the letter "N", sort your results by state capital                */
/* ---------------------------------------------------------------------------- */

SELECT * FROM us_state WHERE abbreviation LIKE  'N%' ORDER BY capital

ends with a in capitals
SELECT * FROM us_state WHERE capital LIKE '%a'

