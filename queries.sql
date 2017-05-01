-- Executing query:
SELECT
	population
FROM
	country
WHERE
	code = 'USA'
Total query runtime: 25 msec
1 row retrieved.

-- Executing query:
SELECT
	name,
	population
FROM
	country
WHERE
	code = 'USA'
Total query runtime: 20 msec
1 row retrieved.

-- Executing query:
SELECT
	name,
	surfacearea
FROM
	country
WHERE
	code = 'USA'
Total query runtime: 13 msec
1 row retrieved.

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
FROM
	country
WHERE
	continent = 'Africa'
	population < 30000000
	lifeexpectancy > 45
ERROR:  syntax error at or near "population"
LINE 9:  population < 30000000
         ^

********** Error **********

ERROR: syntax error at or near "population"
SQL state: 42601
Character: 88

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45
Total query runtime: 18 msec
37 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	NOT(Republic)
ERROR:  column "republic" does not exist
LINE 12:  NOT(Republic)
              ^
********** Error **********

ERROR: column "republic" does not exist
SQL state: 42703
Character: 164

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	NOT("Republic")
ERROR:  column "Republic" does not exist
LINE 12:  NOT("Republic")
              ^

********** Error **********

ERROR: column "Republic" does not exist
SQL state: 42703
Character: 164

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	NOT(governmentform = "Republic")
ERROR:  column "Republic" does not exist
LINE 12:  NOT(governmentform = "Republic")
                               ^

********** Error **********

ERROR: column "Republic" does not exist
SQL state: 42703
Character: 181

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	NOT(governmentform = 'Republic')
Total query runtime: 16 msec
9 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy,
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	NOT(governmentform = 'Republic')
Total query runtime: 19 msec
9 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy,
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	governmentform
	NOT LIKE( = '%Republic%')
ERROR:  syntax error at or near "="
LINE 13:  NOT LIKE( = '%Republic%')
                    ^

********** Error **********

ERROR: syntax error at or near "="
SQL state: 42601
Character: 187

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy,
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	governmentform
	NOT LIKE('%Republic%')
Total query runtime: 17 msec
7 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	lifeexpectancy,
	governmentform
FROM
	country
WHERE
	continent = 'Africa' AND
	population < 30000000 AND
	lifeexpectancy > 45 AND
	governmentform
	NOT LIKE '%Republic%'
Total query runtime: 13 msec
7 rows retrieved.

-- Executing query:
SELECT
	name,
	governmentform
FROM
	country
WHERE
	governmentform
	LIKE '%Republic%'
Total query runtime: 18 msec
143 rows retrieved.

-- Executing query:
SELECT
	name,
	governmentform
FROM
	country
WHERE
	governmentform = 'Republic'

Total query runtime: 17 msec
122 rows retrieved.

-- Executing query:
SELECT
	name,
	governmentform,
	indepyear
FROM
	country
WHERE
	governmentform LIKE '%Republic%' AND
	indepyear > 1945
Total query runtime: 17 msec
92 rows retrieved.

-- Executing query:
SELECT
	name,
	governmentform,
	indepyear
FROM
	country
WHERE
	governmentform NOT LIKE '%Republic%' AND
	indepyear > 1945
Total query runtime: 18 msec
27 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
WHERE

ORDER BY
	lifeexpectancy ASC
ERROR:  syntax error at or near "ORDER"
LINE 8: ORDER BY
        ^

********** Error **********

ERROR: syntax error at or near "ORDER"
SQL state: 42601
Character: 54

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
ORDER BY
	lifeexpectancy ASC
Total query runtime: 11 msec
239 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
ORDER BY
	lifeexpectancy ASC
	LIMIT 15
Total query runtime: 19 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
ORDER BY
	lifeexpectancy ASC
LIMIT
	15
Total query runtime: 19 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
ORDER BY
	lifeexpectancy DESC
LIMIT
	15
Total query runtime: 18 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
ORDER BY
	lifeexpectancy ASC
LIMIT
	15
Total query runtime: 20 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
WHERE
	lifeexpectancy > 0
ORDER BY
	lifeexpectancy ASC
LIMIT
	15
Total query runtime: 19 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	lifeexpectancy
FROM
	country
WHERE
	lifeexpectancy > 0
ORDER BY
	lifeexpectancy DESC
LIMIT
	15
Total query runtime: 19 msec
15 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea,
	population / surfacearea AS pop_density
FROM
	country
WHERE
	population / surfacearea > 0
ORDER BY
	population / surfacearea ASC
LIMIT
	5
Total query runtime: 20 msec
5 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea,
	population / surfacearea AS pop_density
FROM
	country
WHERE
	population / surfacearea > 0
ORDER BY
	population / surfacearea DESC
LIMIT
	5
Total query runtime: 12 msec
5 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea,
	population / surfacearea AS pop_density
FROM
	country
ORDER BY
	population / surfacearea DESC
LIMIT
	5
Total query runtime: 19 msec
5 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea
FROM
	country
ORDER BY
	surfacearea DESC
LIMIT
	10
Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea
FROM
	country
ORDER BY
	surfacearea asc
LIMIT
	10
Total query runtime: 20 msec
10 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea
FROM
	country
ORDER BY
	population asc
LIMIT
	10
Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
SELECT
	name,
	population,
	surfacearea
FROM
	country
ORDER BY
	population desc
LIMIT
	10
Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
WITH
	(SELECT
		name,
		population,
		surfacearea,
		gnp
	FROM
		country
	ORDER BY
		population desc LIMIT 10
	) AS ten_smallest

SELECT
	name,
	population,
	surfacearea,
	gnp
FROM
	ten_smallest
ORDER BY
	gnp desc
ERROR:  syntax error at or near "("
LINE 2:  (SELECT
         ^

********** Error **********

ERROR: syntax error at or near "("
SQL state: 42601
Character: 8

-- Executing query:
WITH ten_smallest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp
	FROM
		country
	ORDER BY
		population desc LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp
FROM
	ten_smallest
ORDER BY
	gnp desc
Total query runtime: 49 msec
10 rows retrieved.

-- Executing query:
WITH ten_smallest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp
	FROM
		country
	ORDER BY
		population ASC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp
FROM
	ten_smallest
ORDER BY
	gnp desc
Total query runtime: 17 msec
10 rows retrieved.

-- Executing query:
WITH ten_smallest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp
	FROM
		country
	WHERE
		population > 0
	ORDER BY
		population ASC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp
FROM
	ten_smallest
ORDER BY
	gnp desc
Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH ten_smallest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population ASC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp
FROM
	ten_smallest
ORDER BY
	gnp desc
Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH ten_smallest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp,
		gnp / population AS gnp_per_capita
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population ASC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp,
	gnp_per_capita
FROM
	ten_smallest
ORDER BY
	gnp_per_capita desc
Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
WITH ten_smallest AS
	(SELECT
		population,
		surfacearea,
		gnp,
		gnp / population AS gnp_per_capita
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population ASC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp,
	gnp_per_capita
FROM
	ten_smallest
ORDER BY
	gnp_per_capita desc
ERROR:  column "name" does not exist
LINE 16:  name,
          ^

********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 207

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp,
		gnp / population AS gnp_per_capita
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population DESC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp,
	gnp_per_capita
FROM
	ten_biggest
ORDER BY
	gnp_per_capita desc
Total query runtime: 12 msec
10 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp,
		gnp / population AS gnp_per_capita
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population DESC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp,
	gnp_per_capita
FROM
	ten_biggest
ORDER BY
	gnp desc
Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		population,
		surfacearea,
		gnp,
		gnp / population AS gnp_per_capita
	FROM
		country
	WHERE
		population > 0 AND gnp > 0
	ORDER BY
		population DESC LIMIT 10
	)

SELECT
	name,
	population,
	surfacearea,
	gnp,
	gnp_per_capita
FROM
	ten_biggest
ORDER BY
	gnp_per_capita desc
Total query runtime: 11 msec
10 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea),

FROM
	ten_biggest
ORDER BY
	gnp_per_capita desc
ERROR:  syntax error at or near "FROM"
LINE 5:  FROM
         ^
********** Error **********

ERROR: syntax error at or near "FROM"
SQL state: 42601
Character: 55

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea),

FROM
	ten_biggest
ORDER BY
	gnp_per_capita desc
ERROR:  syntax error at or near "FROM"
LINE 15: FROM
         ^

********** Error **********

ERROR: syntax error at or near "FROM"
SQL state: 42601
Character: 148

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea)
FROM
	ten_biggest
ORDER BY
	gnp_per_capita desc
ERROR:  column "gnp_per_capita" does not exist
LINE 17:  gnp_per_capita desc
          ^

********** Error **********

ERROR: column "gnp_per_capita" does not exist
SQL state: 42703
Character: 173

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea)
FROM
	ten_biggest
ERROR:  column "ten_biggest.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 12:  name,
          ^

********** Error **********

ERROR: column "ten_biggest.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 121

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name
FROM
	ten_biggest
Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea) FROM ten_biggest
FROM
	ten_biggest
ERROR:  syntax error at or near "FROM"
LINE 14: FROM
         ^

********** Error **********

ERROR: syntax error at or near "FROM"
SQL state: 42601
Character: 162

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT
	name,
	sum(surfacearea) FROM ten_biggest
ERROR:  column "ten_biggest.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 12:  name,
          ^

********** Error **********

ERROR: column "ten_biggest.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 121

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT sum(surfacearea) FROM ten_biggest;


Total query runtime: 16 msec
1 row retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT sum(surfacearea) FROM ten_biggest;
	name


ERROR:  syntax error at or near "name"
LINE 12:  name
          ^
********** Error **********

ERROR: syntax error at or near "name"
SQL state: 42601
Character: 155

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT sum(surfacearea) FROM ten_biggest;
SELECT
	name


ERROR:  column "name" does not exist
LINE 13:  name
          ^

********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 163

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea
	FROM
		country
	ORDER BY
		surfacearea DESC LIMIT 10
	)

SELECT sum(surfacearea) AS CombinedSurfaceArea FROM ten_biggest;


Total query runtime: 12 msec
1 row retrieved.

-- Executing query:
SELECT
	continents,
	surfacearea,
	population

FROM
	country

GROUP BY
	continents
ORDER BY
	surfacearea
ERROR:  column "continents" does not exist
LINE 2:  continents,
         ^
HINT:  Perhaps you meant to reference the column "country.continent".

********** Error **********

ERROR: column "continents" does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "country.continent".
Character: 9

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continents
ORDER BY
	surfacearea
ERROR:  column "continents" does not exist
LINE 10:  continents
          ^
HINT:  Perhaps you meant to reference the column "country.continent".

********** Error **********

ERROR: column "continents" does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "country.continent".
Character: 73

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continent
ORDER BY
	surfacearea desc
ERROR:  column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  surfacearea,
         ^

********** Error **********

ERROR: column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 21

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continent
	country.surfacearea
ORDER BY
	surfacearea desc
ERROR:  syntax error at or near "country"
LINE 11:  country.surfacearea
          ^

********** Error **********

ERROR: syntax error at or near "country"
SQL state: 42601
Character: 84

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continent
	surfacearea
ORDER BY
	surfacearea desc
ERROR:  syntax error at or near "surfacearea"
LINE 11:  surfacearea
          ^

********** Error **********

ERROR: syntax error at or near "surfacearea"
SQL state: 42601
Character: 84

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continent


ERROR:  column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  surfacearea,
         ^

********** Error **********

ERROR: column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 21

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country

GROUP BY
	continent;


ERROR:  column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  surfacearea,
         ^

********** Error **********

ERROR: column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 21

-- Executing query:
SELECT
	continent,
	population

FROM
	country

GROUP BY
	continent;


ERROR:  column "country.population" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  population
         ^

********** Error **********

ERROR: column "country.population" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 21

-- Executing query:
SELECT
	name

FROM
	country

GROUP BY
	continent;


ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  name
         ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 9

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)




ERROR:  syntax error at end of input
LINE 14:
          ^

********** Error **********

ERROR: syntax error at end of input
SQL state: 42601
Character: 127

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent
FROM
	country
Total query runtime: 32 msec
239 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent
FROM
	country
Total query runtime: 34 msec
239 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent,
	population
FROM
	country
Total query runtime: 33 msec
239 rows retrieved.

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent,
	population
FROM
	country
GROUP BY
	continent
ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 14:  name,
          ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 145

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent,
	population
FROM
	country
GROUP BY
	continent;
ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 14:  name,
          ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 145

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent,
	population
FROM
	country
GROUP BY
	country.continent;
ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 14:  name,
          ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 145

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,
	surfacearea,
	continent,
	population
FROM
	country
GROUP BY
	country.name;
ERROR:  column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 15:  surfacearea,
          ^

********** Error **********

ERROR: column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 152

-- Executing query:
WITH ten_biggest AS
	(SELECT
		name,
		surfacearea,
		continent,
		population
	FROM
		country
	ORDER BY
		continent DESC LIMIT 10
	)

SELECT
	name,

FROM
	country
GROUP BY
	country.name;
ERROR:  syntax error at or near "FROM"
LINE 16: FROM
         ^

********** Error **********

ERROR: syntax error at or near "FROM"
SQL state: 42601
Character: 153

-- Executing query:

SELECT
	name,
	continent

FROM
	country
GROUP BY
	continent
ORDER BY
	name
ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  name,
         ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 10

-- Executing query:
SELECT
	continent

FROM
	country
GROUP BY
	continent

Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	surfacearea

FROM
	country
GROUP BY
	continent

ERROR:  column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  surfacearea
         ^

********** Error **********

ERROR: column "country.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 21

-- Executing query:
SELECT
	continent,
	surfacearea

FROM
	country
GROUP BY
	continent
	surfacearea
ERROR:  syntax error at or near "surfacearea"
LINE 9:  surfacearea
         ^

********** Error **********

ERROR: syntax error at or near "surfacearea"
SQL state: 42601
Character: 70

-- Executing query:
SELECT
	continent,
	surfacearea

FROM
	country
GROUP BY
	continent,
	surfacearea
Total query runtime: 18 msec
238 rows retrieved.

-- Executing query:
SELECT
	continent,
	surfacearea,
	population

FROM
	country
GROUP BY
	continent,
	surfacearea,
	population
Total query runtime: 32 msec
239 rows retrieved.

-- Executing query:
SELECT
	continent,
	SUM(population) AS totalpop

FROM
	country
GROUP BY
	continent,

ERROR:  syntax error at end of input
LINE 9:
        ^

********** Error **********

ERROR: syntax error at end of input
SQL state: 42601
Character: 86

-- Executing query:
SELECT
	continent,
	SUM(population) AS totalpop

FROM
	country
GROUP BY
	continent

Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	SUM(population) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

Total query runtime: 17 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	AVG(population) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

Total query runtime: 20 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	MAX(population) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

Total query runtime: 51 msec
7 rows retrieved.

-- Executing query:
SELECT
	name,
	continent,
	MAX(population) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  name,
         ^
********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 9

-- Executing query:
SELECT
	continent,
	MAX(population.name) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

ERROR:  missing FROM-clause entry for table "population"
LINE 3:  MAX(population.name) AS totalpop
             ^

********** Error **********

ERROR: missing FROM-clause entry for table "population"
SQL state: 42P01
Character: 25

-- Executing query:
SELECT
	continent,
	MAX(population) AS totalpop

FROM
	country
GROUP BY
	continent
ORDER BY
	totalpop

Total query runtime: 16 msec
7 rows retrieved.

-- Executing query:
SELECT
	name,
	sum(surfacearea) AS totalarea

FROM
	country
GROUP BY
	continent
ORDER BY
	totalarea

ERROR:  column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  name,
         ^

********** Error **********

ERROR: column "country.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 9

-- Executing query:
SELECT
	sum(surfacearea) AS totalarea

FROM
	country
GROUP BY
	continent
ORDER BY
	totalarea

Total query runtime: 12 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	sum(surfacearea) AS totalarea

FROM
	country
GROUP BY
	continent
ORDER BY
	totalarea

Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	sum(surfacearea) AS totalarea

FROM
	country
GROUP BY
	continent
ORDER BY
	totalarea asc

Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	sum(surfacearea) AS totalarea

FROM
	country
GROUP BY
	continent
ORDER BY
	totalarea desc

Total query runtime: 19 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	avg(gnp) AS avggnp

FROM
	country
GROUP BY
	continent
ORDER BY
	avggnp desc

Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
SELECT
	continent,
	avg(gnp/population) AS avggnp

FROM
	country
GROUP BY
	continent
ORDER BY
	avggnp desc

ERROR:  division by zero

********** Error **********

ERROR: division by zero
SQL state: 22012

-- Executing query:
SELECT
	continent,
	avg(gnp/population) AS avggnp
FROM
	country
WHERE
	population > 0
GROUP BY
	continent
ORDER BY
	avggnp desc

Total query runtime: 17 msec
6 rows retrieved.

-- Executing query:
SELECT
	continent,
	sum(gnp/population) AS avggnp
FROM
	country
WHERE
	population > 0
GROUP BY
	continent
ORDER BY
	avggnp desc

Total query runtime: 17 msec
6 rows retrieved.

-- Executing query:
SELECT
	continent,
	max(gnp/population) AS avggnp
FROM
	country
WHERE
	population > 0
GROUP BY
	continent
ORDER BY
	avggnp desc

Total query runtime: 18 msec
6 rows retrieved.

-- Executing query:
SELECT
	continent,
	max(gnp) AS avggnp
FROM
	country
WHERE
	population > 0
GROUP BY
	continent
ORDER BY
	avggnp desc

Total query runtime: 18 msec
6 rows retrieved.

-- Executing query:
SELECT
	max(population) AS maxPop
FROM
	country
WHERE
	population > 0


Total query runtime: 20 msec
1 row retrieved.

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country
WHERE
	population > 0


ERROR:  column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  headofstate,
         ^

********** Error **********

ERROR: column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 10

-- Executing query:
SELECT
	max(population) AS maxPop
FROM
	country
WHERE
	population > 0
GROUP BY
	headofstate


Total query runtime: 13 msec
180 rows retrieved.

-- Executing query:
SELECT
	max(population) AS maxPop,
	headofstate
FROM
	country
WHERE
	population > 0
GROUP BY
	headofstate


Total query runtime: 20 msec
180 rows retrieved.

-- Executing query:
SELECT
	population,
	headofstate
FROM
	country
WHERE
	population > 0
ORDER BY
	population DESC LIMIT 1


Total query runtime: 12 msec
1 row retrieved.

-- Executing query:
SELECT
	max(population) AS maxPop,
	headofstate
FROM
	country
WHERE
	population > 0
GROUP BY
	population


ERROR:  column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  headofstate
         ^
********** Error **********

ERROR: column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 38

-- Executing query:
WITH maxPop AS (
		SELECT
			max(population)
		FROM
			country
		WHERE
			population > 0)

SELECT
	headofstate
FROM
	maxPop


ERROR:  column "headofstate" does not exist
LINE 10:  headofstate
          ^

********** Error **********

ERROR: column "headofstate" does not exist
SQL state: 42703
Character: 102

-- Executing query:
WITH maxPop AS (
		SELECT
			max(population)
			headstate
		FROM
			country
		WHERE
			population > 0)

SELECT
	headofstate
FROM
	maxPop


ERROR:  column "headofstate" does not exist
LINE 11:  headofstate
          ^
HINT:  Perhaps you meant to reference the column "maxpop.headstate".

********** Error **********

ERROR: column "headofstate" does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "maxpop.headstate".
Character: 115

-- Executing query:
WITH maxPop AS (
		SELECT
			max(population)
			headofstate
		FROM
			country
		WHERE
			population > 0)

SELECT
	headofstate
FROM
	maxPop


Total query runtime: 19 msec
1 row retrieved.

-- Executing query:
WITH maxPop AS (
		SELECT
			max(population),
			headofstate
		FROM
			country
		WHERE
			population > 0)

SELECT
	headofstate
FROM
	maxPop


ERROR:  column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
LINE 4:    headofstate
           ^
********** Error **********

ERROR: column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 51

-- Executing query:
SELECT
	headofstate,
	population,
	continent
FROM
	country

GROUP BY
	continent

ORDER BY
	population
ERROR:  column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  headofstate,
         ^
********** Error **********

ERROR: column "country.headofstate" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 10

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country

GROUP BY
	headofstate
Total query runtime: 17 msec
180 rows retrieved.

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country

GROUP BY
	headofstate

ORDER BY
	maxPop
Total query runtime: 18 msec
180 rows retrieved.

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country

GROUP BY
	headofstate

ORDER BY
	maxPop DESC LIMIT 1
Total query runtime: 20 msec
1 row retrieved.

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country

GROUP BY
	headofstate

Total query runtime: 18 msec
180 rows retrieved.

-- Executing query:
SELECT
	headofstate,
	max(population) AS maxPop
FROM
	country

GROUP BY
	headofstate

ORDER BY
	maxPop DESC
Total query runtime: 20 msec
180 rows retrieved.

-- Executing query:
SELECT
	headofstate,
	max(surfacearea) AS maxArea
FROM
	country

GROUP BY
	headofstate

ORDER BY
	maxArea DESC
Total query runtime: 20 msec
180 rows retrieved.

-- Executing query:
SELECT
	COUNT(country.governmentform) AS govtCount
FROM
	country

GROUP BY
	governmentform

Total query runtime: 18 msec
35 rows retrieved.

-- Executing query:
SELECT
	governmentform,
	COUNT(country.governmentform) AS govtCount
FROM
	country

GROUP BY
	governmentform

Total query runtime: 19 msec
35 rows retrieved.

-- Executing query:
SELECT
	governmentform,
	COUNT(country.governmentform) AS govtCount
FROM
	country

GROUP BY
	governmentform

ORDER BY
	govtcount DESC

Total query runtime: 20 msec
35 rows retrieved.

-- Executing query:
WITH
largestSurface AS
	(SELECT
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform

ORDER BY
	surfacearea

ERROR:  column "largestsurface.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
LINE 23:  surfacearea
          ^

********** Error **********

ERROR: column "largestsurface.surfacearea" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 212

-- Executing query:
WITH
largestSurface AS
	(SELECT
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform


Total query runtime: 19 msec
5 rows retrieved.

-- Executing query:
WITH
largestSurface AS
	(SELECT
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	name
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform


ERROR:  column "name" does not exist
LINE 14:  name
          ^

********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 136

-- Executing query:
WITH
largestSurface AS
	(SELECT
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform


ERROR:  column "name" does not exist
LINE 14:  name,
          ^
********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 136

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform


ERROR:  column "name" does not exist
LINE 15:  name,
          ^

********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 143

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface

GROUP BY
	governmentform


ERROR:  column "largestsurface.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 15:  name,
          ^

********** Error **********

ERROR: column "largestsurface.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 144

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		surfacearea,
		governmentform
	FROM
		country
	ORDER BY
		surfacearea DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface




Total query runtime: 12 msec
10 rows retrieved.

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		gnp,
		governmentform
	FROM
		country
	ORDER BY
		gnp DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface




Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		gnp / population,
		governmentform
	FROM
		country
	ORDER BY
		gnp DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface




ERROR:  division by zero

********** Error **********

ERROR: division by zero
SQL state: 22012

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		gnp / population,
		governmentform
	FROM
		country
	WHERE
		population > 0
	ORDER BY
		gnp DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface




Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
WITH
largestSurface AS
	(SELECT
		name,
		gnp / population AS gnpPerCapita,
		governmentform
	FROM
		country
	WHERE
		population > 0
	ORDER BY
		gnpPerCapita DESC
	LIMIT
		10)

SELECT
	name,
	governmentform

FROM
	largestSurface




Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
SELECT COUNT(*) AS everything

FROM country


Total query runtime: 20 msec
1 row retrieved.

-- Executing query:
SELECT COUNT(*) * 0.05 AS everything

FROM country


Total query runtime: 12 msec
1 row retrieved.

-- Executing query:
SELECT round(COUNT(*) * 0.05) AS everything

FROM country


Total query runtime: 20 msec
1 row retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT round(COUNT(*) * 0.05) AS everything)


Total query runtime: 17 msec
0 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (round(COUNT(*) * 0.05))


ERROR:  aggregate functions are not allowed in LIMIT
LINE 8:  surfacearea DESC LIMIT (round(COUNT(*) * 0.05))
                                       ^

********** Error **********

ERROR: aggregate functions are not allowed in LIMIT
SQL state: 42803
Character: 85

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT COUNT(*) * 0.05)


Total query runtime: 18 msec
0 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT 10


Total query runtime: 18 msec
10 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT(*) * 0.05)


ERROR:  aggregate functions are not allowed in LIMIT
LINE 8:  surfacearea DESC LIMIT (COUNT(*) * 0.05)
                                 ^

********** Error **********

ERROR: aggregate functions are not allowed in LIMIT
SQL state: 42803
Character: 79

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT * 0.05)


ERROR:  syntax error at or near "0.05"
LINE 8:  surfacearea DESC LIMIT (SELECT * 0.05)
                                          ^
********** Error **********

ERROR: syntax error at or near "0.05"
SQL state: 42601
Character: 88

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT 0.05)


Total query runtime: 16 msec
0 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT(SELECT *) 0.05)


ERROR:  syntax error at or near "SELECT"
LINE 8:  surfacearea DESC LIMIT (COUNT(SELECT *) 0.05)
                                       ^
********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 85

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT( SELECT * ) 0.05)


ERROR:  syntax error at or near "SELECT"
LINE 8:  surfacearea DESC LIMIT (COUNT( SELECT * ) 0.05)
                                        ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 86

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT( SELECT * ) * 0.05)


ERROR:  syntax error at or near "SELECT"
LINE 8:  surfacearea DESC LIMIT (COUNT( SELECT * ) * 0.05)
                                        ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 86

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT( SELECT * FROM country) * 0.05)


ERROR:  syntax error at or near "SELECT"
LINE 8:  surfacearea DESC LIMIT (COUNT( SELECT * FROM country) * 0.0...
                                        ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 86

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (COUNT(SELECT * FROM country) * 0.05)


ERROR:  syntax error at or near "SELECT"
LINE 8:  surfacearea DESC LIMIT (COUNT(SELECT * FROM country) * 0.05...
                                       ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 85

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT COUNT(*) from country * 0.05)


ERROR:  syntax error at or near "0.05"
LINE 8: ...surfacearea DESC LIMIT (SELECT COUNT(*) from country * 0.05)
                                                                  ^

********** Error **********

ERROR: syntax error at or near "0.05"
SQL state: 42601
Character: 110

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT (SELECT COUNT(*) from country)


Total query runtime: 17 msec
239 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT ((SELECT COUNT(*) from country) * 0.05)


Total query runtime: 19 msec
12 rows retrieved.

-- Executing query:
SELECT
	name,
	surfacearea

FROM country

ORDER BY
	surfacearea DESC LIMIT ((SELECT COUNT(*) from country) * 0.05)



Total query runtime: 17 msec
12 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguange cl ON (c.code = cl.countrycode)




ERROR:  syntax error at or near "cl"
LINE 4:  cl.language AS languageSpoken
         ^
********** Error **********

ERROR: syntax error at or near "cl"
SQL state: 42601
Character: 67

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguange cl ON c.code = cl.countrycode




ERROR:  syntax error at or near "cl"
LINE 4:  cl.language AS languageSpoken
         ^

********** Error **********

ERROR: syntax error at or near "cl"
SQL state: 42601
Character: 67

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguange cl ON c.code = cl.countrycode




ERROR:  relation "countrylanguange" does not exist
LINE 8:  countrylanguange cl ON c.code = cl.countrycode
         ^

********** Error **********

ERROR: relation "countrylanguange" does not exist
SQL state: 42P01
Character: 123

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguange cl ON (c.code = cl.countrycode)




ERROR:  relation "countrylanguange" does not exist
LINE 8:  countrylanguange cl ON (c.code = cl.countrycode)
         ^

********** Error **********

ERROR: relation "countrylanguange" does not exist
SQL state: 42P01
Character: 123

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)




Total query runtime: 99 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 65 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken
	cl.percentage AS Dialects

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




ERROR:  syntax error at or near "cl"
LINE 5:  cl.percentage AS Dialects
         ^
********** Error **********

ERROR: syntax error at or near "cl"
SQL state: 42601
Character: 99

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 66 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects
	populationCount * Dialects AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




ERROR:  syntax error at or near "populationCount"
LINE 6:  populationCount * Dialects AS SpeakersOfLanguage
         ^

********** Error **********

ERROR: syntax error at or near "populationCount"
SQL state: 42601
Character: 127

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	populationCount * Dialects AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




ERROR:  column "populationcount" does not exist
LINE 6:  populationCount * Dialects AS SpeakersOfLanguage
         ^

********** Error **********

ERROR: column "populationcount" does not exist
SQL state: 42703
Character: 128

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * cl.percentage) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 98 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	(cl.percentage / 100) AS Dialects,
	(c.population * cl.percentage) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 116 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	(cl.percentage / 100) AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 116 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 99 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

ORDER BY
	countryName DESC




Total query runtime: 87 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	countryName DESC




ERROR:  column "c.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  c.name AS countryName,
         ^

********** Error **********

ERROR: column "c.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 10

-- Executing query:
SELECT

	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	countryName DESC




ERROR:  column "countryname" does not exist
LINE 16:  countryName DESC
          ^
HINT:  Perhaps you meant to reference the column "cl.countrycode".

********** Error **********

ERROR: column "countryname" does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "cl.countrycode".
Character: 284

-- Executing query:
SELECT

	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	languageSpoken




ERROR:  column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
LINE 3:  c.population AS populationCount,
         ^

********** Error **********

ERROR: column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 12

-- Executing query:
SELECT


	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	languageSpoken




ERROR:  column "cl.percentage" must appear in the GROUP BY clause or be used in an aggregate function
LINE 5:  cl.percentage AS Dialects,
         ^

********** Error **********

ERROR: column "cl.percentage" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 46

-- Executing query:
SELECT


	cl.language AS languageSpoken,

	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	languageSpoken




ERROR:  column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
LINE 6:  round((c.population * (cl.percentage / 100))) AS SpeakersOf...
                ^

********** Error **********

ERROR: column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 55

-- Executing query:
SELECT


	cl.language AS languageSpoken,

	round(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	languageSpoken




ERROR:  column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
LINE 6:  round(c.population * (cl.percentage / 100)) AS SpeakersOfLa...
               ^
********** Error **********

ERROR: column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 54

-- Executing query:
SELECT




	round(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	cl.language






ERROR:  column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
LINE 6:  round(c.population * (cl.percentage / 100)) AS SpeakersOfLa...
               ^
********** Error **********

ERROR: column "c.population" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 24

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	languageSpoken

ORDER BY
	countryName DESC




ERROR:  column "c.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 2:  c.name AS countryName,
         ^
********** Error **********

ERROR: column "c.name" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 10

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)


ORDER BY
	countryName DESC




Total query runtime: 87 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)


ORDER BY
	countryName languageSpoken




ERROR:  syntax error at or near "languageSpoken"
LINE 14:  countryName languageSpoken
                      ^

********** Error **********

ERROR: syntax error at or near "languageSpoken"
SQL state: 42601
Character: 293

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)


ORDER BY
	languageSpoken DESC




Total query runtime: 88 msec
984 rows retrieved.

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage
	sum(c.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  syntax error at or near "sum"
LINE 7:  sum(c.SpeakersOfLanguage) AS sumOfSpeakers
         ^

********** Error **********

ERROR: syntax error at or near "sum"
SQL state: 42601
Character: 197

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage
	sum(cl.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  syntax error at or near "sum"
LINE 7:  sum(cl.SpeakersOfLanguage) AS sumOfSpeakers
         ^

********** Error **********

ERROR: syntax error at or near "sum"
SQL state: 42601
Character: 197

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage
	SUM(cl.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  syntax error at or near "SUM"
LINE 7:  SUM(cl.SpeakersOfLanguage) AS sumOfSpeakers
         ^
********** Error **********

ERROR: syntax error at or near "SUM"
SQL state: 42601
Character: 197

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage
	SUM(c.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  syntax error at or near "SUM"
LINE 7:  SUM(c.SpeakersOfLanguage) AS sumOfSpeakers
         ^

********** Error **********

ERROR: syntax error at or near "SUM"
SQL state: 42601
Character: 197

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage,
	SUM(c.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  column c.speakersoflanguage does not exist
LINE 7:  SUM(c.SpeakersOfLanguage) AS sumOfSpeakers
             ^

********** Error **********

ERROR: column c.speakersoflanguage does not exist
SQL state: 42703
Character: 202

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	round((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage,
	SUM(cl.SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  column cl.speakersoflanguage does not exist
LINE 7:  SUM(cl.SpeakersOfLanguage) AS sumOfSpeakers
             ^

********** Error **********

ERROR: column cl.speakersoflanguage does not exist
SQL state: 42703
Character: 202

-- Executing query:
round((c.population * (cl.percentage / 100)))
ERROR:  syntax error at or near "round"
LINE 1: round((c.population * (cl.percentage / 100)))
        ^

********** Error **********

ERROR: syntax error at or near "round"
SQL state: 42601
Character: 1

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage,
	SUM(SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)

GROUP BY
	speakersOfLanguage

ORDER BY
	languageSpoken DESC




ERROR:  column "speakersoflanguage" does not exist
LINE 7:  SUM(SpeakersOfLanguage) AS sumOfSpeakers
             ^

********** Error **********

ERROR: column "speakersoflanguage" does not exist
SQL state: 42703
Character: 195

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage,
	SUM(SpeakersOfLanguage) AS sumOfSpeakers

FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)



ORDER BY
	languageSpoken DESC




ERROR:  column "speakersoflanguage" does not exist
LINE 7:  SUM(SpeakersOfLanguage) AS sumOfSpeakers
             ^
********** Error **********

ERROR: column "speakersoflanguage" does not exist
SQL state: 42703
Character: 195

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage,


FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)



ORDER BY
	languageSpoken DESC




ERROR:  syntax error at or near "FROM"
LINE 9: FROM
        ^

********** Error **********

ERROR: syntax error at or near "FROM"
SQL state: 42601
Character: 194

-- Executing query:
SELECT
	c.name AS countryName,
	c.population AS populationCount,
	cl.language AS languageSpoken,
	cl.percentage AS Dialects,
	(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage


FROM
	country c JOIN
	countrylanguage cl ON (c.code = cl.countrycode)



ORDER BY
	languageSpoken DESC




Total query runtime: 99 msec
984 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		c.population AS populationCount,
		cl.language AS languageSpoken,
		cl.percentage AS Dialects,
		(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage


		FROM
		country c JOIN
		countrylanguage cl ON (c.code = cl.countrycode)



		ORDER BY
		languageSpoken DESC)

SELECT
	languageSpoken,
	SUM(SpeakersOfLanguage) AS AllSpeakers
FROM
	subQuery
GROUP BY
	languageSpoken




Total query runtime: 33 msec
457 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		c.population AS populationCount,
		cl.language AS languageSpoken,
		cl.percentage AS Dialects,
		(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage


		FROM
		country c JOIN
		countrylanguage cl ON (c.code = cl.countrycode)



		ORDER BY
		languageSpoken DESC)

SELECT
	languageSpoken,
	SUM(SpeakersOfLanguage) AS AllSpeakers
FROM
	subQuery
GROUP BY
	languageSpoken
ORDER BY
	languageSpoken DESC LIMIT 10




Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		c.population AS populationCount,
		cl.language AS languageSpoken,
		cl.percentage AS Dialects,
		(c.population * (cl.percentage / 100)) AS SpeakersOfLanguage


		FROM
		country c JOIN
		countrylanguage cl ON (c.code = cl.countrycode)



		ORDER BY
		languageSpoken DESC)

SELECT
	languageSpoken,
	SUM(SpeakersOfLanguage) AS AllSpeakers
FROM
	subQuery
GROUP BY
	languageSpoken
ORDER BY
	AllSpeakers DESC LIMIT 10




Total query runtime: 19 msec
10 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		c.population AS populationCount,
		cl.language AS languageSpoken,
		cl.percentage AS Dialects,
		ROUND((c.population * (cl.percentage / 100))) AS SpeakersOfLanguage

		FROM
		country c JOIN
		countrylanguage cl ON (c.code = cl.countrycode)

		ORDER BY
		languageSpoken DESC)

SELECT
	languageSpoken,
	SUM(SpeakersOfLanguage) AS AllSpeakers
FROM
	subQuery
GROUP BY
	languageSpoken
ORDER BY
	AllSpeakers DESC LIMIT 10




Total query runtime: 20 msec
10 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON cy.countrycode = c.code
		WHERE
		c.name = 'chile'

SELECT
	cy.name,
	COUNT(cityName) AS cityCount

FROM
	subQuery


ERROR:  syntax error at or near "SELECT"
LINE 12: SELECT
         ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 169

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON cy.countrycode = c.code
		WHERE
		c.name = 'chile'

SELECT
	COUNT(cityName) AS cityCount

FROM
	subQuery


ERROR:  syntax error at or near "SELECT"
LINE 12: SELECT
         ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 169

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON cy.countrycode = c.code
		WHERE
		c.name = 'chile')

SELECT
	COUNT(cityName) AS cityCount

FROM
	subQuery


Total query runtime: 18 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON cy.countrycode = c.code
		WHERE
		c.name = 'chile')

SELECT
	cy.city
	COUNT(cityName) AS cityCount

FROM
	subQuery


ERROR:  syntax error at or near "("
LINE 14:  COUNT(cityName) AS cityCount
               ^

********** Error **********

ERROR: syntax error at or near "("
SQL state: 42601
Character: 192

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON cy.countrycode = c.code
		WHERE
		c.name = 'chile')

SELECT
	cy.city


FROM
	subQuery


ERROR:  missing FROM-clause entry for table "cy"
LINE 13:  cy.city
          ^

********** Error **********

ERROR: missing FROM-clause entry for table "cy"
SQL state: 42P01
Character: 178

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.name = 'chile')

SELECT
	cy.city


FROM
	subQuery


ERROR:  missing FROM-clause entry for table "cy"
LINE 13:  cy.city
          ^

********** Error **********

ERROR: missing FROM-clause entry for table "cy"
SQL state: 42P01
Character: 180

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.name = 'chile')

SELECT
	cy.name


FROM
	subQuery


ERROR:  missing FROM-clause entry for table "cy"
LINE 13:  cy.name
          ^

********** Error **********

ERROR: missing FROM-clause entry for table "cy"
SQL state: 42P01
Character: 180

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.name = 'chile')

SELECT
	cityname


FROM
	subQuery


Total query runtime: 16 msec
0 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)

SELECT
	cityname


FROM
	subQuery


ERROR:  syntax error at or near "SELECT"
LINE 10: SELECT
         ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 144

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code))

SELECT
	cityname


FROM
	subQuery


Total query runtime: 120 msec
4079 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code))

SELECT
	countryName,
	cityname


FROM
	subQuery


Total query runtime: 184 msec
4079 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code))

SELECT
	countryName,
	cityname

FROM
	subQuery
WHERE
	countryName = 'Chile'

Total query runtime: 18 msec
29 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code))

SELECT
	countryName,
	cityname

FROM
	subQuery
WHERE
	COUNT(countryName = 'Chile')

ERROR:  aggregate functions are not allowed in WHERE
LINE 17:  COUNT(countryName = 'Chile')
          ^
********** Error **********

ERROR: aggregate functions are not allowed in WHERE
SQL state: 42803
Character: 201

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code))

SELECT
	countryName,
	cityname

FROM
	subQuery
WHERE
	countryName = 'Chile'

Total query runtime: 18 msec
29 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
	countryName = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


ERROR:  column "countryname" does not exist
LINE 10:  countryName = 'Chile')
          ^
HINT:  Perhaps you meant to reference the column "cy.countrycode".

********** Error **********

ERROR: column "countryname" does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "cy.countrycode".
Character: 152

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
	cy.countryName = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


ERROR:  column cy.countryname does not exist
LINE 10:  cy.countryName = 'Chile')
          ^
HINT:  Perhaps you meant to reference the column "cy.countrycode".

********** Error **********

ERROR: column cy.countryname does not exist
SQL state: 42703
Hint: Perhaps you meant to reference the column "cy.countrycode".
Character: 152

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
	c.countryName = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


ERROR:  column c.countryname does not exist
LINE 10:  c.countryName = 'Chile')
          ^

********** Error **********

ERROR: column c.countryname does not exist
SQL state: 42703
Character: 152

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
	c.Name = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


Total query runtime: 18 msec
29 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		(c.Name = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


ERROR:  syntax error at or near "SELECT"
LINE 13: SELECT
         ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 176

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'Chile')


SELECT
	countryName,
	cityname

FROM
	subQuery


Total query runtime: 17 msec
29 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'Chile')


SELECT
	countryName,
	cityname
	COUNT(*)

FROM
	subQuery


ERROR:  syntax error at or near "("
LINE 16:  COUNT(*)
               ^
********** Error **********

ERROR: syntax error at or near "("
SQL state: 42601
Character: 212

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'Chile')


SELECT
	countryName,
	cityname,
	COUNT(*)

FROM
	subQuery


ERROR:  column "subquery.countryname" must appear in the GROUP BY clause or be used in an aggregate function
LINE 14:  countryName,
          ^

********** Error **********

ERROR: column "subquery.countryname" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 183

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'Chile')


SELECT
	countryName,
	cityname,
	SELECT COUNT(*)

FROM
	subQuery


ERROR:  syntax error at or near "SELECT"
LINE 16:  SELECT COUNT(*)
          ^

********** Error **********

ERROR: syntax error at or near "SELECT"
SQL state: 42601
Character: 208

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'Chile')


SELECT
	COUNT(*)

FROM
	subQuery


Total query runtime: 18 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName,
		cy.population AS cityPop
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'China')


SELECT
	SUM(cityPop)

FROM
	subQuery


Total query runtime: 17 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		c.name AS countryName,
		cy.name AS cityName,
		cy.population AS cityPop
		FROM
		country c JOIN
		city cy ON (cy.countrycode = c.code)
		WHERE
		c.Name = 'China')


SELECT
	*

FROM
	subQuery


Total query runtime: 34 msec
363 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		continent
		FROM
		country
		WHERE
		continent = 'North America')


SELECT
	COUNT(*)

FROM
	subQuery


Total query runtime: 18 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		continent
		FROM
		country
		WHERE
		continent = 'North America')


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
37 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		continent
		FROM
		country
		WHERE
		indepyear < 1963)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
121 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear,
		continent
		FROM
		country
		WHERE
		indepyear < 1963)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
121 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		sum(population),
		continent
		FROM
		country
		GROUP BY
			continent)


SELECT
	*

FROM
	subQuery


Total query runtime: 19 msec
7 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		sum(population) AS total,
		continent
		FROM
		country
		GROUP BY
			continent)


SELECT
	SUM(total)

FROM
	subQuery


Total query runtime: 19 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		sum(population),
		continent
		FROM
		country
		GROUP BY
			continent)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		avg(lifeexpectancy) AS LifeSpan,
		continent
		FROM
		country
		GROUP BY
			continent)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
7 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE( = '%z%')
		)


SELECT
	*

FROM
	subQuery


ERROR:  syntax error at or near "="
LINE 9:   name LIKE( = '%z%')
                     ^

********** Error **********

ERROR: syntax error at or near "="
SQL state: 42601
Character: 81

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%z%'
		)


SELECT
	*

FROM
	subQuery


Total query runtime: 17 msec
13 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%z%'
		)


SELECT
	COUNT(*)

FROM
	subQuery


Total query runtime: 19 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%z%'
		)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
13 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%Z%'
		)


SELECT
	*

FROM
	subQuery


Total query runtime: 18 msec
3 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%Z%' OR '%z%'
		)


SELECT
	*

FROM
	subQuery


ERROR:  invalid input syntax for type boolean: "%z%"
LINE 9:   name LIKE '%Z%' OR '%z%'
                             ^

********** Error **********

ERROR: invalid input syntax for type boolean: "%z%"
SQL state: 22P02
Character: 89

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name

		FROM
		country
		WHERE
		name LIKE '%Z%' OR name LIKE'%z%'
		)


SELECT
	*

FROM
	subQuery


Total query runtime: 17 msec
16 rows retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(2017 - indepyear)

FROM
	subQuery


Total query runtime: 18 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(2017 - indepyear) AS age of jamaicans

FROM
	subQuery


ERROR:  syntax error at or near "of"
LINE 14:  (2017 - indepyear) AS age of jamaicans
                                    ^

********** Error **********

ERROR: syntax error at or near "of"
SQL state: 42601
Character: 139

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(2017 - indepyear) AS ageofjamaicans

FROM
	subQuery


Total query runtime: 18 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(indepyear) AS ageofjamaicans

FROM
	subQuery


Total query runtime: 19 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(2017 - indepyear) AS ageofjamaicans

FROM
	subQuery


Total query runtime: 19 msec
1 row retrieved.

-- Executing query:
WITH
	subQuery AS
		(SELECT
		name,
		indepyear
		FROM
		country
		WHERE
		name = 'Jamaica'
		)


SELECT
	(2017 - indepyear) AS ageofjamaicans

FROM
	subQuery


Total query runtime: 29 msec
1 row retrieved.

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage

Total query runtime: 46 msec
984 rows retrieved.

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN (SELECT isofficial FROM countrylanguage WHERE isofficial = true AND false)
Total query runtime: 47 msec
984 rows retrieved.

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN (SELECT isofficial FROM countrylanguage WHERE countrycode IS NOT = true )
ERROR:  syntax error at or near "="
LINE 7: ...icial FROM countrylanguage WHERE countrycode IS NOT = true )
                                                               ^

********** Error **********

ERROR: syntax error at or near "="
SQL state: 42601
Character: 140

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN (SELECT isofficial FROM countrylanguage WHERE countrycode (IS NOT = true) )
ERROR:  syntax error at or near "NOT"
LINE 7: ...ficial FROM countrylanguage WHERE countrycode (IS NOT = true...
                                                             ^

********** Error **********

ERROR: syntax error at or near "NOT"
SQL state: 42601
Character: 137

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN (SELECT isofficial FROM countrylanguage WHERE countrycode IS NOT  true )
ERROR:  argument of IS NOT TRUE must be type boolean, not type character
LINE 7: ... IN (SELECT isofficial FROM countrylanguage WHERE countrycod...
                                                             ^

********** Error **********

ERROR: argument of IS NOT TRUE must be type boolean, not type character
SQL state: 42804
Character: 121

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	isofficial NOT IN (SELECT isofficial FROM countrylanguage WHERE countrycode IS NOT  true )
ERROR:  argument of IS NOT TRUE must be type boolean, not type character
LINE 7: ... IN (SELECT isofficial FROM countrylanguage WHERE countrycod...
                                                             ^

********** Error **********

ERROR: argument of IS NOT TRUE must be type boolean, not type character
SQL state: 42804
Character: 127

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	 NOT IN (SELECT isofficial FROM countrylanguage WHERE countrycode IS NOT  true )
ERROR:  syntax error at or near "IN"
LINE 7:   NOT IN (SELECT isofficial FROM countrylanguage WHERE count...
              ^

********** Error **********

ERROR: syntax error at or near "IN"
SQL state: 42601
Character: 68

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	 true NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial IS NOT true )
ERROR:  operator does not exist: boolean = character
LINE 7:   true NOT IN (SELECT countrycode FROM countrylanguage WHERE...
               ^
HINT:  No operator matches the given name and argument type(s). You might need to add explicit type casts.

********** Error **********

ERROR: operator does not exist: boolean = character
SQL state: 42883
Hint: No operator matches the given name and argument type(s). You might need to add explicit type casts.
Character: 69

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	 true NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = false )
ERROR:  operator does not exist: boolean = character
LINE 7:   true NOT IN (SELECT countrycode FROM countrylanguage WHERE...
               ^
HINT:  No operator matches the given name and argument type(s). You might need to add explicit type casts.

********** Error **********

ERROR: operator does not exist: boolean = character
SQL state: 42883
Hint: No operator matches the given name and argument type(s). You might need to add explicit type casts.
Character: 69

-- Executing query:
SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	 t NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = f )
ERROR:  column "f" does not exist
LINE 7: ...LECT countrycode FROM countrylanguage WHERE isofficial = f )
                                                                    ^

********** Error **********

ERROR: column "f" does not exist
SQL state: 42703
Character: 133

-- Executing query:
WITH hasofficial AS (SELECT name, isofficial FROM countrylanguage WHERE isofficial = true)



SELECT
	*
FROM
	countrylanguage
EXCEPT
	hasofficial
ERROR:  syntax error at or near "hasofficial"
LINE 10:  hasofficial
          ^

********** Error **********

ERROR: syntax error at or near "hasofficial"
SQL state: 42601
Character: 135

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT name, isofficial FROM countrylanguage WHERE isofficial = true)
ERROR:  column "name" does not exist
LINE 8:  (SELECT name, isofficial FROM countrylanguage WHERE isoffic...
                 ^

********** Error **********

ERROR: column "name" does not exist
SQL state: 42703
Character: 51

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT countrycode,
	isofficial FROM countrylanguage WHERE isofficial = true)
ERROR:  each EXCEPT query must have the same number of columns
LINE 8:  (SELECT countrycode,
                 ^

********** Error **********

ERROR: each EXCEPT query must have the same number of columns
SQL state: 42601
Character: 51

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial = true)
ERROR:  EXCEPT types text and boolean cannot be matched
LINE 10:  isofficial,
          ^

********** Error **********

ERROR: EXCEPT types text and boolean cannot be matched
SQL state: 42804
Character: 68

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial = t)
ERROR:  column "t" does not exist
LINE 16:  isofficial = t)
                       ^

********** Error **********

ERROR: column "t" does not exist
SQL state: 42703
Character: 151

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial = boolean)
ERROR:  column "boolean" does not exist
LINE 16:  isofficial = boolean)
                       ^

********** Error **********

ERROR: column "boolean" does not exist
SQL state: 42703
Character: 151

-- Executing query:


SELECT
	*
FROM
	countrylanguage
EXCEPT
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial)
ERROR:  EXCEPT types text and boolean cannot be matched
LINE 10:  isofficial,
          ^

********** Error **********

ERROR: EXCEPT types text and boolean cannot be matched
SQL state: 42804
Character: 68

-- Executing query:


SELECT
	*
FROM
	countrylanguage
NOT IN
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial)
ERROR:  syntax error at or near "NOT"
LINE 7: NOT IN
        ^

********** Error **********

ERROR: syntax error at or near "NOT"
SQL state: 42601
Character: 35

-- Executing query:


SELECT
	*
FROM
	countrylanguage
WHERE
NOT IN
	(SELECT
	countrycode,
	isofficial,
	language,
	percentage
	FROM
	countrylanguage
	WHERE
	isofficial)
ERROR:  syntax error at or near "IN"
LINE 8: NOT IN
            ^

********** Error **********

ERROR: syntax error at or near "IN"
SQL state: 42601
Character: 45

-- Executing query:


SELECT
	*
FROM
	countrylanguage
WHERE
true NOT IN(isofficial)

Total query runtime: 48 msec
746 rows retrieved.

-- Executing query:


SELECT
	*
FROM
	countrylanguage
WHERE
false NOT IN(isofficial)

Total query runtime: 30 msec
238 rows retrieved.

-- Executing query:


SELECT
	*
FROM
	countrylanguage
WHERE
false NOT IN(isofficial)
GROUP BY
	countrycode

ERROR:  column "countrylanguage.language" must appear in the GROUP BY clause or be used in an aggregate function
LINE 4:  *
         ^
********** Error **********

ERROR: column "countrylanguage.language" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 11

-- Executing query:


SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
false NOT IN(isofficial)
GROUP BY
	countrycode

ERROR:  column "countrylanguage.isofficial" must appear in the GROUP BY clause or be used in an aggregate function
LINE 5:  isofficial
         ^

********** Error **********

ERROR: column "countrylanguage.isofficial" must appear in the GROUP BY clause or be used in an aggregate function
SQL state: 42803
Character: 25

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
false NOT IN(isofficial)
GROUP BY
	countrycode

Total query runtime: 12 msec
190 rows retrieved.

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage

GROUP BY
	countrycode

Total query runtime: 13 msec
233 rows retrieved.

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
false NOT IN(isofficial)
GROUP BY
	countrycode

Total query runtime: 14 msec
190 rows retrieved.

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
	false NOT IN(isofficial)
GROUP BY
	countrycode


Total query runtime: 16 msec
190 rows retrieved.

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
	false NOT IN(isofficial)



Total query runtime: 15 msec
238 rows retrieved.

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
	true NOT IN(isofficial)



Total query runtime: 29 msec
746 rows retrieved.

-- Executing query:


SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN(isofficial)



Total query runtime: 32 msec
746 rows retrieved.

-- Executing query:


SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN(isofficial WHERE countrycode NOT IN (isofficial))



ERROR:  syntax error at or near "WHERE"
LINE 9:  true NOT IN(isofficial WHERE countrycode NOT IN (isofficial...
                                ^

********** Error **********

ERROR: syntax error at or near "WHERE"
SQL state: 42601
Character: 88

-- Executing query:


SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN(isofficial)



Total query runtime: 32 msec
746 rows retrieved.

-- Executing query:


SELECT
	countrycode,
	isofficial
FROM
	countrylanguage
WHERE
	true NOT IN(isofficial)
EXCEPT
	countrycode NOT IN (isofficial)



ERROR:  syntax error at or near "countrycode"
LINE 11:  countrycode NOT IN (isofficial)
          ^

********** Error **********

ERROR: syntax error at or near "countrycode"
SQL state: 42601
Character: 97

-- Executing query:


SELECT
	countrycode
FROM
	countrylanguage
WHERE
	false NOT IN(isofficial)

GROUP BY
	countrycode


Total query runtime: 13 msec
190 rows retrieved.

-- Executing query:
SELECT countrycode FROM countrylanguage

EXCEPT

SELECT countrycode FROM countrylanguage WHERE false NOT IN(isofficial) GROUP BY countrycode


Total query runtime: 14 msec
43 rows retrieved.
