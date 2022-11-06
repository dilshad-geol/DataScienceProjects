USE writersdb;


/* -------------------- Commulative Challenge : Book Publishing-----------------------------------*/
/* Scenario: A book publisher wants to publish books that are over 150 pages long,                */
/* Challenge: In MySQL Workbench, write an SQL statement that will retrieve all these submissions:*/
/* Include the columns title, author, pages, and the language names.                              */
/* Sort the results by titles in ascending order.                                                 */
/* ---------------------------------------------------------------------------------------------- */



SELECT title, author, pages, language_name
FROM submission, language
WHERE submission.language_code = language.language_code
AND pages>150
order by title