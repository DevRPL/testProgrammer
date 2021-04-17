SELECT id, name FROM city WHERE id NOT IN ( SELECT city_id FROM building);

/*

Output

+----+-------------+
| id | name        |
+----+-------------+
|  3 | Medan       |
|  6 | Johor Bahru |
+----+-------------+
2 rows in set (0.026 sec)

*/