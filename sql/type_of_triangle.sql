SELECT CASE
WHEN A + B <= C THEN "Not A Triangle"
WHEN A = B AND B = C THEN "Equilateral"
WHEN A = B OR B = C OR A = C THEN "Isosceles"
ELSE "Scalene"
END 
FROM TRIANGLES;
