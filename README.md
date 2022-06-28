# README

* version
- rails 7.0.3
- ruby 3.1.2

* Test Result (indexing)
```
No index
Car Load (2.9ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name0" = $1  [["name0", "toyota500"]]

Add index field name0
-- find_by name0
Car Load (2.0ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name0" = $1 LIMIT $2  [["name0", "toyota500"], ["LIMIT", 1]]
-- where name0
Car Load (1.8ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name0" = $1  [["name0", "toyota500"]]
-- where name1
Car Load (2.0ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name1" = $1  [["name1", "toyota500"]]

10000 record
indexing
Car Load (1.8ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name0" = $1  [["name0", "toyota589"]]
no index field
Car Load (3.9ms)  SELECT "cars".* FROM "cars" WHERE "cars"."name1" = $1  [["name1", "toyota589"]]
```

* Test Result (query)
```
profile 10 record
-- n + 1
31 ms
-- optimize with includes
15 ms

car 10000 record
-- basic
8750 ms
-- select
1700 ms
-- pluck
38 ms
```