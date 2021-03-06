/*
Aggregating strings
Usually, when we talk about concatenation, we mean putting together values from different columns. A common challenge for database developers is also to concatenate values from multiple rows. This was a task that required writing many lines of code and each developer had a personal implementation.

You can now achieve the same results using the STRING_AGG() function.

The syntax is: STRING_AGG(expression, separator) [WITHIN GROUP (ORDER BY expression)]

In this exercise, you will create a list with the origins of the beans for each of the following companies: 'Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters'.

Remember, for STRING_AGG() to work, you need to find a rule for grouping your data and use it in the GROUP BY clause.
*/


/*
Create a list with all the values found in the bean_origin column for the companies: 'Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters'. The values should be separated by commas (,).
*/
SELECT
	-- Create a list with all bean origins, delimited by comma
	STRING_AGG(bean_origin, ',') AS bean_origins
FROM ratings
WHERE company IN ('Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters');


/*
Create a list with the values found in the bean_origin column for each of the companies: 'Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters'. The values should be separated by commas (,).
*/
SELECT 
	company,
    -- Create a list with all bean origins
	STRING_AGG(bean_origin, ',') AS bean_origins
FROM ratings
WHERE company IN ('Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters')
-- Specify the columns used for grouping your data
GROUP BY company;


/*
Arrange the values from the list in alphabetical order.

*/
SELECT 
	company,
    -- Create a list with all bean origins ordered alphabetically
	STRING_AGG(bean_origin, ',') WITHIN GROUP (ORDER BY bean_origin) AS bean_origins
FROM ratings
WHERE company IN ('Bar Au Chocolat', 'Chocolate Con Amor', 'East Van Roasters')
-- Specify the columns used for grouping your data
GROUP BY company;

