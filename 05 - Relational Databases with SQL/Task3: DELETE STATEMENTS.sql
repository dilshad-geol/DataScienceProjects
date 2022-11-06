USE mydb;

/* ============================================================================ */
/* SECTION 4: DELETE statements                                                 */
/* ============================================================================ */
-- delete added row, Awais
DELETE FROM club_member
WHERE first_name= 'Awais'
AND last_name='Raza'

-- checking if its gone
SELECT* from club_member Where last_name = 'Raza'

/* ---- TASK 4 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to delete the row in the table club_member            */
/* if the phone_number is "+923087625314"                                          */  
/* ---------------------------------------------------------------------------- */

DELETE FROM club_member
where phone_number = '+923087625314'

select * from club_member where phone_number= '+923087625314' -- hence deleted the record