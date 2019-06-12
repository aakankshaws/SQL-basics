/* 
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).
*/

DECLARE @Iter Integer = 1
WHILE @Iter < 21
BEGIN
    SELECT REPLICATE('* ',@Iter) as result
SET @Iter = @Iter+1
END
