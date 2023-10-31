-- select city with hightest poplulation --
SELECT * FROM world.city
WHERE Population = (SELECT MAX(Population)  FROM world.city );

-- select region with the hihets ;ife expectancy
SELECT * FROM world.country
WHERE LifeExpectancy=(SELECT MAX(LifeExpectancy) FROM world.country     )

-- select language with the highest percentage --
SELECT * FROM world.countrylanguage
WHERE Percentage=(SELECT MAX(Percentage)
FROM world.countrylanguage
)