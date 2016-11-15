-- Find all rows that have an ingredient name of Brussels sprouts.
EXPLAIN ANALYZE
SELECT * FROM ingredients WHERE name LIKE '%Brussels sprouts%';

-- Calculate the total count of rows of ingredients with a name of Brussels sprouts.
EXPLAIN ANALYZE
SELECT COUNT(name) FROM ingredients WHERE name LIKE '%Brussels sprouts%';

-- Find all Brussels sprouts ingredients having a unit type of gallon(s).
EXPLAIN ANALYZE
SELECT name, unit FROM ingredients WHERE name LIKE '%Brussels sprouts%' AND unit = 'gallon(s)';

-- Find all rows that have a unit type of gallon(s), a name of Brussels sprouts or has the letter j in it.
EXPLAIN ANALYZE 
SELECT * FROM ingredients WHERE unit = 'gallon(s)' AND name LIKE '%Brussels sprouts%' OR name LIKE '%j%';
