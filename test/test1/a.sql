SELECT id, name as city, population FROM city WHERE population > 500 ORDER BY city ASC;

/*

Output

+----+--------------+------------+
| id | city         | population |
+----+--------------+------------+
|  1 | Jakarta      |       1000 |
|  4 | Kuala Lumpur |        600 |
+----+--------------+------------+
2 rows in set (0.000 sec)

*/