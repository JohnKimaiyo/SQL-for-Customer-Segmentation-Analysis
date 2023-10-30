-- select city with hightest poplulation --
SELECT * FROM world.city
WHERE Population = (SELECT MAX(Population)  FROM world.city );