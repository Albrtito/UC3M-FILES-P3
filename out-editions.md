
Output from running the step 4 of the classnotes
```sql
SQL> set autotrace traceonly;
SQL> select * from editions;

240632 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 1741989577

------------------------------------------------------------------------------
| Id  | Operation         | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------
|   0 | SELECT STATEMENT  |          |   249K|   234M|  2055   (1)| 00:00:01 |
|   1 |  TABLE ACCESS FULL| EDITIONS |   249K|   234M|  2055   (1)| 00:00:01 |
------------------------------------------------------------------------------

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
         80  recursive calls
         91  db block gets
      23359  consistent gets
       7857  physical reads
      17764  redo size
   57147402  bytes sent via SQL*Net to client
     176814  bytes received via SQL*Net from client
      16044  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
     240632  rows processed

SQL>
```
