**Initial results from the fourth query** 
```sql
SQL> select * from editions;

240632 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |   240K|    49M|  2055   (1)| 00:00:01 |
|   1 |  TABLE ACCESS FULL| EDITIONS |   240K|    49M|  2055   (1)| 00:00:01 |
------------------------------------------------------------------------------


Statistics
----------------------------------------------------------
         42  recursive calls
         87  db block gets
      23119  consistent gets
       3071  physical reads
      17668  redo size
   57147402  bytes sent via SQL*Net to client
     176814  bytes received via SQL*Net from client
      16044  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
     240632  rows processed
```
