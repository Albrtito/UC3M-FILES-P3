Outputs of the select with autotrace traceonly after running the cluster

## Output of madrid 
```sql
SQL> select * from editions where pub_place='Madrid';

82450 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 9953560

-----------------------------------------------------------------------------------
| Id  | Operation            | Name       | Rows  | Bytes | Cost (%CPU)| Time     |
-----------------------------------------------------------------------------------
|   0 | SELECT STATEMENT     |            |    48 | 10272 |     2   (0)| 00:00:01 |
|   1 |  TABLE ACCESS CLUSTER| EDITIONS   |    48 | 10272 |     2   (0)| 00:00:01 |
|*  2 |   INDEX UNIQUE SCAN  | IDX_PLACES |     1 |       |     1   (0)| 00:00:01 |
-----------------------------------------------------------------------------------

Predicate Information (identified by operation id):
---------------------------------------------------

   2 - access("PUB_PLACE"='Madrid')


Statistics
----------------------------------------------------------
          2  recursive calls
          0  db block gets
       8009  consistent gets
        976  physical reads
          0  redo size
   17923534  bytes sent via SQL*Net to client
      60833  bytes received via SQL*Net from client
       5498  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
      82450  rows processed

SQL>
```
