```sql

Execution Plan
----------------------------------------------------------
Plan hash value: 1451850256

--------------------------------------------------------------------------------------------
| Id  | Operation                | Name    | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
--------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |         |   241K|   332M|       | 90149   (1)| 00:00:04 |
|   1 |  LOAD TABLE CONVENTIONAL | BOOKS   |       |       |       |            |          |
|   2 |   HASH UNIQUE            |         |   241K|   332M|       | 90149   (1)| 00:00:04 |
|   3 |    HASH GROUP BY         |         |   241K|   332M|   377M| 90149   (1)| 00:00:04 |
|   4 |     TABLE ACCESS FULL    | ACERVUS |   241K|   332M|       | 17127   (1)| 00:00:01 |
--------------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
       5246  recursive calls
     582425  db block gets
     219226  consistent gets
      88655  physical reads
  140419924  redo size
        494  bytes sent via SQL*Net to client
       1168  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
         91  sorts (memory)
          0  sorts (disk)
     181435  rows processed


Commit complete.


23333 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3874782606

-------------------------------------------------------------------------------------------------
| Id  | Operation                | Name         | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |              | 12079 |  6063K|       | 18449   (1)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | MORE_AUTHORS |       |       |       |            |          |
|   2 |   HASH GROUP BY          |              | 12079 |  6063K|  6456K| 18449   (1)| 00:00:01 |
|*  3 |    TABLE ACCESS FULL     | ACERVUS      | 12079 |  6063K|       | 17131   (1)| 00:00:01 |
-------------------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   3 - filter(TRIM("OTHER_AUTHORS") IS NOT NULL)


Statistics
----------------------------------------------------------
        108  recursive calls
     130899  db block gets
      68833  consistent gets
      68043  physical reads
   23445988  redo size
        494  bytes sent via SQL*Net to client
       1097  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
      23333  rows processed


240632 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3874782606

---------------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
---------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |   241K|   237M|       | 69298   (1)| 00:00:03 |
|   1 |  LOAD TABLE CONVENTIONAL | EDITIONS |       |       |       |            |          |
|   2 |   HASH GROUP BY          |          |   241K|   237M|   269M| 69298   (1)| 00:00:03 |
|   3 |    TABLE ACCESS FULL     | ACERVUS  |   241K|   237M|       | 17131   (1)| 00:00:01 |
---------------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
       7119  recursive calls
    2052443  db block gets
     329327  consistent gets
     201183  physical reads
  217408240  redo size
        494  bytes sent via SQL*Net to client
       1461  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
        119  sorts (memory)
          0  sorts (disk)
     240632  rows processed


Commit complete.


241572 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 4000303434

---------------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
---------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |   241K|  5661K|       | 19738   (1)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | COPIES   |       |       |       |            |          |
|   2 |   VIEW                   | VW_DIS_1 |   241K|  5661K|       | 19738   (1)| 00:00:01 |
|   3 |    HASH UNIQUE           |          |   241K|  9908K|    12M| 19738   (1)| 00:00:01 |
|*  4 |     TABLE ACCESS FULL    | ACERVUS  |   241K|  9908K|       | 17125   (1)| 00:00:01 |
---------------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   4 - filter("SIGNATURE" IS NOT NULL)


Statistics
----------------------------------------------------------
        949  recursive calls
    1227528  db block gets
     185591  consistent gets
      62780  physical reads
   76183572  redo size
        494  bytes sent via SQL*Net to client
        938  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
         13  sorts (memory)
          0  sorts (disk)
     241572  rows processed


Commit complete.


1365 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------------
| Id  | Operation                | Name           | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |                |  1365 |   110K|    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | MUNICIPALITIES |       |       |            |          |
|   2 |   HASH UNIQUE            |                |  1365 |   110K|    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS       |  1365 |   110K|    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         62  recursive calls
       2292  db block gets
        338  consistent gets
        122  physical reads
     542868  redo size
        494  bytes sent via SQL*Net to client
        946  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
       1365  rows processed


150 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |   150 |   900 |    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | ROUTES   |       |       |            |          |
|   2 |   HASH UNIQUE            |          |   150 |   900 |    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS |  1365 |  8190 |    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         33  recursive calls
        124  db block gets
        185  consistent gets
          1  physical reads
      17252  redo size
        494  bytes sent via SQL*Net to client
        890  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
        150  rows processed


12 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |  1311 |   445K|    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | DRIVERS  |       |       |            |          |
|   2 |   HASH UNIQUE            |          |  1311 |   445K|    36   (3)| 00:00:01 |
|*  3 |    TABLE ACCESS FULL     | BUSSTOPS |  1311 |   445K|    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   3 - filter("LIB_BIRTHDATE"<>'29-02-1970')


Statistics
----------------------------------------------------------
         68  recursive calls
        113  db block gets
        214  consistent gets
          2  physical reads
      11784  redo size
        494  bytes sent via SQL*Net to client
       1178  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
         12  rows processed


1 row created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |    54 | 18792 |    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | DRIVERS  |       |       |            |          |
|   2 |   HASH UNIQUE            |          |    54 | 18792 |    36   (3)| 00:00:01 |
|*  3 |    TABLE ACCESS FULL     | BUSSTOPS |    54 | 18792 |    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   3 - filter("LIB_BIRTHDATE"='29-02-1970')


Statistics
----------------------------------------------------------
         15  recursive calls
          4  db block gets
        122  consistent gets
          0  physical reads
        644  redo size
        494  bytes sent via SQL*Net to client
       1176  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
          1  rows processed


14 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 2328408529

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |    14 |   770 |    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | BIBUSES  |       |       |            |          |
|   2 |   HASH GROUP BY          |          |    14 |   770 |    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS |  1365 | 75075 |    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         54  recursive calls
        145  db block gets
        203  consistent gets
          2  physical reads
      14752  redo size
        494  bytes sent via SQL*Net to client
       1041  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
         14  rows processed


150 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

---------------------------------------------------------------------------------------
| Id  | Operation                | Name       | Rows  | Bytes | Cost (%CPU)| Time     |
---------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |            |  1365 | 51870 |    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | ASSIGN_DRV |       |       |            |          |
|   2 |   HASH UNIQUE            |            |  1365 | 51870 |    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS   |  1365 | 51870 |    35   (0)| 00:00:01 |
---------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         34  recursive calls
        330  db block gets
        190  consistent gets
          3  physical reads
      32124  redo size
        494  bytes sent via SQL*Net to client
        962  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
        150  rows processed


150 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

---------------------------------------------------------------------------------------
| Id  | Operation                | Name       | Rows  | Bytes | Cost (%CPU)| Time     |
---------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |            |  1365 | 35490 |    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | ASSIGN_BUS |       |       |            |          |
|   2 |   HASH UNIQUE            |            |  1365 | 35490 |    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS   |  1365 | 35490 |    35   (0)| 00:00:01 |
---------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         46  recursive calls
        396  db block gets
        213  consistent gets
          1  physical reads
      39960  redo size
        494  bytes sent via SQL*Net to client
        952  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
        150  rows processed


1365 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |  1365 |   253K|    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | STOPS    |       |       |            |          |
|   2 |   HASH UNIQUE            |          |  1365 |   253K|    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS |  1365 |   253K|    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         41  recursive calls
       5417  db block gets
        400  consistent gets
          0  physical reads
     592800  redo size
        494  bytes sent via SQL*Net to client
       1035  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
       1365  rows processed


1365 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 3542849154

-------------------------------------------------------------------------------------
| Id  | Operation                | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
-------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |          |  1365 |   153K|    36   (3)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | SERVICES |       |       |            |          |
|   2 |   HASH UNIQUE            |          |  1365 |   153K|    36   (3)| 00:00:01 |
|   3 |    TABLE ACCESS FULL     | BUSSTOPS |  1365 |   153K|    35   (0)| 00:00:01 |
-------------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         41  recursive calls
       6092  db block gets
        465  consistent gets
          1  physical reads
     725412  redo size
        494  bytes sent via SQL*Net to client
        992  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          1  sorts (memory)
          0  sorts (disk)
       1365  rows processed


Commit complete.


2771 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 1550468258

----------------------------------------------------------------------------------------------
| Id  | Operation                 | Name     | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
----------------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT          |          | 30535 |    10M|       |  6837   (1)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL  | USERS    |       |       |       |            |          |
|*  2 |   VIEW                    |          | 30535 |    10M|       |  6837   (1)| 00:00:01 |
|*  3 |    WINDOW SORT PUSHED RANK|          | 30535 |    10M|    11M|  6837   (1)| 00:00:01 |
|*  4 |     HASH JOIN             |          | 30535 |    10M|       |  4399   (1)| 00:00:01 |
|   5 |      VIEW                 |          |  1365 | 65520 |       |    36   (3)| 00:00:01 |
|   6 |       SORT UNIQUE         |          |  1365 |   115K|       |    36   (3)| 00:00:01 |
|   7 |        TABLE ACCESS FULL  | BUSSTOPS |  1365 |   115K|       |    35   (0)| 00:00:01 |
|   8 |      VIEW                 |          | 26844 |  8546K|       |  4362   (1)| 00:00:01 |
|   9 |       SORT UNIQUE         |          | 26844 |    14M|    14M|  4362   (1)| 00:00:01 |
|  10 |        TABLE ACCESS FULL  | LOANS    | 26844 |    14M|       |  1251   (1)| 00:00:01 |
----------------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   2 - filter("RN"=1)
   3 - filter(ROW_NUMBER() OVER ( PARTITION BY "A"."A1" ORDER BY  NULL )<=1)
   4 - access(INTERNAL_FUNCTION("A"."TASKDATE")=INTERNAL_FUNCTION("B"."TASKDATE") AND
              "A"."TOWN"="B"."TOWN")


Statistics
----------------------------------------------------------
         95  recursive calls
       6783  db block gets
       5553  consistent gets
       4475  physical reads
    1090692  redo size
        494  bytes sent via SQL*Net to client
       1732  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          4  sorts (memory)
          0  sorts (disk)
       2771  rows processed


23709 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 469124541

----------------------------------------------------------------------------------------
| Id  | Operation                | Name        | Rows  | Bytes | Cost (%CPU)| Time     |
----------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |             |     1 |    87 |  1285   (1)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | LOANS       |       |       |            |          |
|   2 |   VIEW                   | VM_NWVW_1   |     1 |    87 |  1285   (1)| 00:00:01 |
|   3 |    HASH UNIQUE           |             |     1 |   198 |  1285   (1)| 00:00:01 |
|   4 |     NESTED LOOPS         |             |     1 |   198 |  1284   (1)| 00:00:01 |
|   5 |      NESTED LOOPS SEMI   |             |     1 |   179 |  1284   (1)| 00:00:01 |
|*  6 |       HASH JOIN          |             | 26849 |  3408K|  1281   (1)| 00:00:01 |
|   7 |        TABLE ACCESS FULL | USERS       |  2909 |   147K|    30   (0)| 00:00:01 |
|   8 |        TABLE ACCESS FULL | LOANS       | 26844 |  2044K|  1251   (1)| 00:00:01 |
|*  9 |       INDEX UNIQUE SCAN  | PK_SERVICES |     1 |    49 |     0   (0)| 00:00:01 |
|* 10 |      INDEX UNIQUE SCAN   | PK_COPIES   |     1 |    19 |     0   (0)| 00:00:01 |
----------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   6 - access("U"."USER_ID"="L"."USER_ID")
   9 - access("TOWN"=TRIM("U"."TOWN") AND "PROVINCE"=TRIM("U"."PROVINCE") AND
              "TASKDATE"=TO_DATE(SUBSTR("L"."DATE_TIME",1,10),'DD/MM/YYYY'))
  10 - access("SIGNATURE"=TRIM("L"."SIGNATURE"))

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
       4107  recursive calls
     194988  db block gets
     140573  consistent gets
        157  physical reads
   11140784  redo size
        494  bytes sent via SQL*Net to client
       1352  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
         71  sorts (memory)
          0  sorts (disk)
      23709  rows processed


5447 rows created.


Execution Plan
----------------------------------------------------------
Plan hash value: 2310227700

--------------------------------------------------------------------------------------
| Id  | Operation                | Name      | Rows  | Bytes | Cost (%CPU)| Time     |
--------------------------------------------------------------------------------------
|   0 | INSERT STATEMENT         |           |     1 |  1059 |  1253   (1)| 00:00:01 |
|   1 |  LOAD TABLE CONVENTIONAL | POSTS     |       |       |            |          |
|   2 |   VIEW                   | VM_NWVW_1 |     1 |  1059 |  1253   (1)| 00:00:01 |
|   3 |    HASH UNIQUE           |           |     1 |   587 |  1253   (1)| 00:00:01 |
|   4 |     NESTED LOOPS         |           |     1 |   587 |  1252   (1)| 00:00:01 |
|*  5 |      TABLE ACCESS FULL   | LOANS     |  1342 |   716K|  1251   (1)| 00:00:01 |
|*  6 |      INDEX UNIQUE SCAN   | PK_LOANS  |     1 |    40 |     0   (0)| 00:00:01 |
--------------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   5 - filter(TRIM("POST") IS NOT NULL)
   6 - access("SIGNATURE"=TRIM("SIGNATURE") AND "USER_ID"=TRIM("USER_ID") AND
              "STOPDATE"=TO_DATE(SUBSTR("DATE_TIME",1,10),'DD/MM/YYYY'))

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
        218  recursive calls
      28032  db block gets
      12675  consistent gets
          4  physical reads
    7388556  redo size
        494  bytes sent via SQL*Net to client
       1235  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          3  sorts (memory)
          0  sorts (disk)
       5447  rows processed


241572 rows updated.


Execution Plan
----------------------------------------------------------
Plan hash value: 3145693016

-----------------------------------------------------------------------------
| Id  | Operation          | Name   | Rows  | Bytes | Cost (%CPU)| Time     |
-----------------------------------------------------------------------------
|   0 | UPDATE STATEMENT   |        |   276K|   809K|   275   (2)| 00:00:01 |
|   1 |  UPDATE            | COPIES |       |       |            |          |
|   2 |   TABLE ACCESS FULL| COPIES |   276K|   809K|   275   (2)| 00:00:01 |
-----------------------------------------------------------------------------

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
         23  recursive calls
     491221  db block gets
       1243  consistent gets
        895  physical reads
  102006044  redo size
        494  bytes sent via SQL*Net to client
        879  bytes received via SQL*Net from client
          2  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
     241572  rows processed


Commit complete.
