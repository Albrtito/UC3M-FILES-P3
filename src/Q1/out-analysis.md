**INITIAL RESULTS OF THE FIRST QUERY WITH MADRID**
```sql
SQL> select * from editions where pub_place='Madrid';

82450 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |   207 | 44712 |  2054   (1)| 00:00:01 |
|*  1 |  TABLE ACCESS FULL| EDITIONS |   207 | 44712 |  2054   (1)| 00:00:01 |
------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   1 - filter("PUB_PLACE"='Madrid')


Statistics
----------------------------------------------------------
         41  recursive calls
         86  db block gets
      12927  consistent gets
        958  physical reads
      17436  redo size
   17922970  bytes sent via SQL*Net to client
      60833  bytes received via SQL*Net from client
       5498  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
      82450  rows processed

```

**INITIAL RESULTS FOR THE QUERY WITH SEGOVIA** 
```sql
SQL> select * from editions where pub_place='Segovia';

71 rows selected.

Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |   207 | 44712 |  2054   (1)| 00:00:01 |
|*  1 |  TABLE ACCESS FULL| EDITIONS |   207 | 44712 |  2054   (1)| 00:00:01 |
------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   1 - filter("PUB_PLACE"='Segovia')


Statistics
----------------------------------------------------------
          1  recursive calls
          0  db block gets
       7566  consistent gets
       4494  physical reads
          0  redo size
      16790  bytes sent via SQL*Net to client
        418  bytes received via SQL*Net from client
          6  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
         71  rows processed

```
