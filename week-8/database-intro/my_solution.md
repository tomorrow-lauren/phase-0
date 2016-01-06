##Release 5 commands
1. SELECT state_name FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population int FROM states;
4. SELECT state_name, population int FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id=7;
6. SELECT state_name,population_density FROM states WHERE population_density>50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 and 1500000;
8. SELECT state_name,region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE "%Central";
10. SELECT states.state_name, regions.region_name FROM states INNER JOIN regions ON states.region_id = regions.id ORDER BY region_id ASC;
* [Here's the schema design](../operation_chers_closet.png)

## Reflection Section
* What are databases for?

⋅⋅* They're for storing and organizing information. They also provide easily readible and accessible tables for
* What is a one-to-many relationship?
⋅⋅* A one-to-many relationship is polygamy in Utah. Just kidding. Sort of. One-to-many is where one object, or value, is linked to multiple objects. Like the ONE region has MANY states. Or one gun has many bullets, but the bullets only go in the one gun. Hopefully.
* What is a primary key? What is a foreign key? How can you determine which is which?
⋅⋅* A primary key is unique to each record. It's the region_is in the primary table. The foreign key is the id number in the smaller/child table containing the regions.
* How can you select information out of a SQL database? What are some general guidelines for that?
⋅⋅* DO NOT FORGET YOUR SEMICOLONS. Also, It's a bit intuitive. Think of it like you're just picking things out. So you have to SELECT what you want, or maybe two things FROM the table you want it from maybe ORDER BY one of those elements?;(SEMICOLONS). Using the SELECT stuff is really just about figuring out how the database wants to phrase it.
