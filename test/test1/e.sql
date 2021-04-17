SELECT a.id, a.name as building, a.floors
    , b.name as city
		, c.name as country
FROM building a
INNER JOIN city as b
    on a.city_id = b.id
INNER JOIN country c
    on b.country_id= c.id
WHERE  c.id IN (1,2)  AND a.floors > 40

/*

Output

+----+----------+--------+--------------+----------+
| id | building | floors | city         | country  |
+----+----------+--------+--------------+----------+
|  4 | Petronas | 70     | Kuala Lumpur | Malaysia |
+----+----------+--------+--------------+----------+
1 row in set (0.016 sec)

*/