USE my_db;

/**
 * Challenge A
 * Find all the rows containing the word ‘more’ 
 * in the content.
 */
SELECT * FROM articles WHERE content LIKE '%more%';

/**
 * Challenge B
 * Find all the rows beginning with the word ‘wow’ 
 * in the content.
 */
SELECT * FROM articles WHERE content LIKE 'wow%';

/**
 * Challenge C
 * Find all the rows ending with the number 4 
 * in the title.
 */
SELECT * FROM articles WHERE title LIKE '%4';