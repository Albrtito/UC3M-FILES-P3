@2025-04-23

# What to do?
What we did in class is **one of the queries** proposed in the exercise. 
```sql
select * from editions where pub_place='…';
-- values like 'Madrid', 'Segovia', or 'Barataria', to name a few examples
```

1. Run the query with the plan to know the pan there is:
@plan.sql

2. Set the autotrace like in [[#Autotrace]]

3. Run the procedure with a #iterations equal to 10-20 or less, maybe 20 but it is going to grow exponentially. 

4. Learn about the editions table:
> The first part of the assignment goes around working with the editions table, in order to look at its statistics we use

Set the autotrace and select all from editions
```sql
set autotrace traceonly;
select * from editions;
```

Then select explicitly for something: (Segovia and madrid)
```sql
select * from editions where pub_place='Madrid';
select * from editions where pub_place='Segovia';
```

5. Create indexes
```sql
create [ind_type]
```
Create an index on the key:
```sql
create index idx_ed1 on editions(pub_place);
-- Check the query is being executed with the index
select * from editions where pub_place='Madrid';
-- If not, force the query to execute with the index
select /*+ index(editions) */ * from editions
    where pub_place='Madrid';
-- For trying with segovia
select /*+ index(editions) */ * from editions
    where pub_place='Segovia';
-- For madrid, it is better to do a fullscan
select /*+ full(editions) */ * from editions
    where pub_place='Madrid';
```
* Index is secondary as it takes no type
* We see that for madrid, the number of entries is **higher** 
* However it works for low-coincidence values, it is more efficient, see with segovia
* A fullscan can also be tried with segovia to compare


6. Create a cluster:

> !(ATTENTION) RUN THE CREATION
> @NEW_creation.sql script before starting with the clusters
> @NEW_load.sql script **ADD THE LAST LINE SHOWN BELOW** and then run the load scrip

```sql
update copies set condition=substr('NGWVD', dbms_random.value(1,6),1);
```
Then rerun the analyze statistics in order to recompute the statistics.


``` sql 
ANALYZE TABLE name COMPUTE statistics;
ANALYZE TABLE name estimate statistics sample 10 percent;
```

Then create the cluster and drop it in case we rerun the command
```sql
drop cluster places;
create cluster places(pub_place varchar2(50));
create table editions(..) cluster places(pub_place);
create index idx_places on cluster places;
--single table Hashkeys 251;

```

* The (...) needs inside the declaration/definition of the table editions, it would be such in the following examples
```sql
CREATE TABLE Editions(
ISBN               VARCHAR2(20),
TITLE              VARCHAR2(200) NOT NULL,
AUTHOR             VARCHAR2(100) NOT NULL,
LANGUAGE           VARCHAR2(50) default('Spanish') NOT NULL,
ALT_LANGUAGES      VARCHAR2(50),
EDITION            VARCHAR2(50),
PUBLISHER          VARCHAR2(100),
EXTENSION          VARCHAR2(50),
SERIES             VARCHAR2(50),
COPYRIGHT          VARCHAR2(20),
PUB_PLACE          VARCHAR2(50),
DIMENSIONS         VARCHAR2(50),
PHY_FEATURES       VARCHAR2(200),
MATERIALS          VARCHAR2(200),
NOTES              VARCHAR2(500),
NATIONAL_LIB_ID    VARCHAR2(20) NOT NULL,
URL                VARCHAR2(200),
CONSTRAINT pk_editions PRIMARY KEY(isbn),
CONSTRAINT uk_editions UNIQUE (national_lib_id),
CONSTRAINT fk_editions_books FOREIGN KEY(title,author) REFERENCES books(title,author)
) cluster places(pub_place);
```

7. Using the hashkeys table: 
With the hashkey the index is not needed:
```sql
drop cluster places;
create cluster places(pub_place varchar2(50))
    single table Hashkeys 251;
create table editions(..) cluster places(pub_place);

```

* We need to take a prime number, unless it'll take the automatically next bigger prime

Then run the autotrace again and the select query for madrid and segovia to see the sizes of accesses. 

The addressing space value will have pros and cons:
* Smaller number -> more collisions more density
* Bigger number -> more collisions less density

**RESULTS**
* The fullscan is not being damaged that much
+ We could try to increment the size of the hashkeys tables but we wont see that much difference 

8. Other processes
*The second porcesses does not need a cluster
*The last ones behave good with fullscan


***
# Lab concepts

## Hints

* Hints dont have grammar correction from oracle -> Check manually if they don't work

## Autotrace
Autotrace proveides statistics and plans. Setting autotrace gives real a priori statistics. This is not done by default with statistics analyze of oracle. 
* Dont want to use it with the result of the query, because it'll give to much data 
```SQL
set autotrace traceonly
```

## RUN_TEST procedure
We need to set the serveroutput on: 
```sql
set serveroutput on
begin 
PKG_COSTES.RUN_TEST(#iterations)
end;
--Slash is needed if it is going to run directly in the shell
/
```
* Where #iterations is the number of iterations

## Tablespaces
There are no tablespaces to create as we cannot do it, however we can create tables in some tablespaces:
To create a table into the tablespace
```sql
create table (...) tablespace your_tablespace;
```
We can also specigy physical characteristics of some table we create.
```sql
create table (...) pctfree # pctused # storage (initial #);
```
* The # symbol means number 

Objects can be moved between tablespaces


The DB instance we have the following table spaces: 
* TAB_2k.dbf 
    * Has blocksizes of 2048
* TAB_8k.db
    * Blocksizses of 8000
* TAB_16k.dbf
    * Blocksizses of 16000


## Clusters;


