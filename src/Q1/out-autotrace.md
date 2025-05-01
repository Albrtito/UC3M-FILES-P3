# Initial results for madrid
```sql
SQL> select * from editions where pub_place='Madrid';

82450 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          | 89905 |    84M|  2055   (1)| 00:00:01 |
|*  1 |  TABLE ACCESS FULL| EDITIONS | 89905 |    84M|  2055   (1)| 00:00:01 |
------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   1 - filter("PUB_PLACE"='Madrid')

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
         42  recursive calls
         88  db block gets
      13125  consistent gets
       7688  physical reads
      16888  redo size
   17923108  bytes sent via SQL*Net to client
      60829  bytes received via SQL*Net from client
       5498  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
      82450  rows processed

SQL>

```


## Initial results for segovia
```sql
SQL> select * from editions where pub_place='Segovia';

71 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |    83 | 82087 |  2054   (1)| 00:00:01 |
|*  1 |  TABLE ACCESS FULL| EDITIONS |    83 | 82087 |  2054   (1)| 00:00:01 |
------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   1 - filter("PUB_PLACE"='Segovia')

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
          6  recursive calls
          2  db block gets
       7649  consistent gets
       7553  physical reads
          0  redo size
      16787  bytes sent via SQL*Net to client
        418  bytes received via SQL*Net from client
          6  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
         71  rows processed

SQL>
```
* A full scan is performed, therefore a lot of accesses
