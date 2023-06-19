

    # Select from database
```SELECT * FROM table_name;```

    Select specified columns from table
```SELECT first_name, last_name FROM table_name;```

    # Order By
    ASC => 1 2 3 4 5
    DESC => 5 4 3 2 1
    By default it gets everything by ascending order
```SELECT * FROM table_name ORDER BY id;``` 

    By DESC (descending order)
```SELECT * FROM table_name ORDER BY id DESC;```

    # Distinct
    This select data which appears twice on the table once without repeating them
```SELECT DISTINCT column_name FROM table_name ORDER BY column_name;```

    # WHERE,  AND and OR clause
        This is used for filtering
```SELECT * FROM table_name WHERE column_name = 'data';```
##
#
```SELECT * FROM table_name WHERE column_name = 'data' AND column_name = 'data';```
#
```SELECT * FROM table_name WHERE column_name = 'data' AND (column_name = 'data' OR column_name = 'data');```
#

    # Comparison Operator

    SELECT 1 = 1 
    this operation will result to true
    SELECT 1 = 2 
    this operation will result to false
    SELECT 1 > 1
    this operation will result to false
    SELECT 1 < 1
    this operation will result to false
    SELECT 1 >= 1
    this operation will result to true
    SELECT 1 <= 1
    this operation will will result to true
    SELECT 1 >= 2
    this operation will result to false
    SELECT 1 <= 2
    this operation will result to false
    SELECT 1<> 1 
    this operation will result to false
    SELECT 1<>2 (this represent not equal)
    this operation will result to true

##
    # Limits offset and fetch

    this will select all records and limit it by 10, 
    simply saying this will select all first 10 records if not condition is set
```SELECT * FROM table_name LIMIT 10;```
    
    we could also select the very 5 data after the 10th data in the record
```SELECT * FROM table_name OFFSET 5 LIMIT 10;```

    another way of doing this which is an actual sql native command (standard SQL)
```SELECT * FROM table_name OFFSET 5 FETCH FIRST 10 ROW ONLY;```

    this will select from the 5th record down to the 10th record
##
    # IN

```SELECT * FROM table_name WHERE column_name = 'data' OR column_name = 'data'  OR column_name = 'data';```
    
    Optimized using the IN key word
```SELECT * FROM table_name WHERE column_name IN ('data', 'data');```

##
    # BETWEEN
    This will select data from a range
```SELECT * FROM table_name where column_name  BETWEEN 'data' AND 'data';```

    # LIKE and iLIKE
    Matches case using wild cards

```SELECT * FROM table_name WHERE column_name LIKE '%data';```

    Having "%data%" the double percentage will do a wild match without strictly fetching just the data specified 

    Having "%data" a single percentage will do a wild match with strictly fetching just the data specified

    Finding by the length of Characters
```SELECT * FROM table_name WHERE column_name LIKE '____@%';```
    
    this will fetch all data with the email length of 4 
##
    Ignoring case sensitivity while matching use the ILIKE keyword instead
```SELECT * FROM table_name WHERE column_name ILIKE 'p%';```

    # Group by

```SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;```

    # Group by Having
    Perform extra filtering after performing the aggregation

```SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name HAVING COUNT(*) > 5;```

    this will retrieve all data grouped by column_name and greater than 5  which is the count results 

    for example we have table of users which have country and this users are from various countries,

    the first command will retrieve all users grouped by country and there counts (meaning how many users are in a country) 

    the second command will retrieve all users grouped by country and there counts will be greater than 5 or the specified number, (meaning the number of users in a country will be greater than 5)

    Reference => https://www.postgresql.org/docs/15/functions-aggregate.html

    for more aggregate function