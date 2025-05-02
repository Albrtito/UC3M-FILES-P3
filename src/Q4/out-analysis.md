```sql
SQL> select * from editions;

240632 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |   241K|    49M|  2093   (1)| 00:00:01 |
|   1 |  TABLE ACCESS FULL| EDITIONS |   241K|    49M|  2093   (1)| 00:00:01 |
------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         96  recursive calls
          0  db block gets
      23391  consistent gets
         57  physical reads
          0  redo size
   57394306  bytes sent via SQL*Net to client
     176810  bytes received via SQL*Net from client
      16044  SQL*Net roundtrips to/from client
          5  sorts (memory)
          0  sorts (disk)
     240632  rows processed
```
