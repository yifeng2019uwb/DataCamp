/*
Creating and using variables
In T-SQL, to create a variable you use the DECLARE statement. The variables must have an at sign (@) as their first character. Like most things in T-SQL, variables are not case sensitive. To assign a value to a variable, you can either use the keyword SET or a SELECT statement, then the variable name followed by an equal sign and a value.
*/

/*
Create an integer variable named counter.
Assign the value 20 to this variable.
*/
-- Declare the variable (a SQL Command, the var name, the datatype)
DECLARE @counter INTEGER

-- Set the counter to 20
SET @counter = 20

-- Select the counter
SELECT @counter

/*
Increment the variable counter by 1 and assign it back to counter.
*/
-- Declare the variable (a SQL Command, the var name, the datatype)
DECLARE @counter INT 

-- Set the counter to 20
SET @counter = 20

-- Select and increment the counter by one 
SET @counter = @counter + 1

-- Print the variable
SELECT @counter


