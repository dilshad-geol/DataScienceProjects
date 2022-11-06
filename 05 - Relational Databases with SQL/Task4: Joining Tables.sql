USE mydb;

/* ============================================================================ */
/* SECTION 5: Joining tables                                                    */
/* ============================================================================ */

Select club_member.member_id, first_name, last_name, description, amount, due_date
FROM club_member, invoice
WHERE club_member.member_id = invoice.member_id






/* ---- TASK 5 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to:                                                   */
/*                                                                              */
/* 1. include these columns in your results:                                    */
/*    first_name, middle_name, last_name, professional_title, tier.description  */
/*                                                                              */
/* 2. your columns will come from the tables club_member and tier               */
/*                                                                              */
/* 3. linking the tier_code column of the table club_member                     */
/*    to the code column of the table tier                                      */                        
/*                                                                              */
/* 4. sort the results by last_name                                             */
/*                                                                              */
/* ---------------------------------------------------------------------------- */


select  first_name, middle_name, last_name, professional_title, tier.description
from club_member , tier
Where club_member.tier_code = tier.code
order by last_name




