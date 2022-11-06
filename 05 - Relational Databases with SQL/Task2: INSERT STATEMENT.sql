USE mydb;


/* ============================================================================ */
/* SECTION 3: INSERT statements                                                 */
/* ============================================================================ */
-- insert my username in club database
INSERT INTO club_member
SET first_name = 'Dilshad',
last_name = 'Raza',
phone_number = '+923087625314'


-- Checking my inserted ID
SELECT first_name, last_name, phone_number from club_member where first_name = 'Dilshad'

/* ---- TASK 3 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to insert a new member into the table club_member     */
/* set first_name to "Awais", last_name to "Raza"                                 */
/* and phone_number to "9998887777"                                             */
/* ---------------------------------------------------------------------------- */

-- insert into club_member
set first_name = 'Awais',
last_name = 'Raza',
phone_number = '+923051468038'


-- Checking now
SELECT first_name, last_name, phone_number FROM club_member WHERE last_name = 'Raza'