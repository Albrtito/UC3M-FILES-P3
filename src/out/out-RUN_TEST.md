
## Resultados con #iterations = 5
```sql
begin
  2  pKG_COSTES.RUN_TEST(5);
  3  end;
  4  /
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
RESULTS AT 23/04/2025 17:38:07
TIME CONSUMPTION (run): 1151.4 milliseconds.
CONSISTENT GETS (workload):60493 acc
CONSISTENT GETS (weighted average):6049.3 acc

PL/SQL procedure successfully completed.
```

## Resultados con #iterations = 10
```sql
begin
  2  pKG_COSTES.RUN_TEST(10);
  3  end;
  4  /
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
Iteration 6
Iteration 7
Iteration 8
Iteration 9
Iteration 10
RESULTS AT 23/04/2025 17:41:45
TIME CONSUMPTION (run): 1069.1 milliseconds.
CONSISTENT GETS (workload):60493 acc
CONSISTENT GETS (weighted average):6049.3 acc

PL/SQL procedure successfully completed.
```



## Results for same query as last one but with madrid.
* Along 1200 queries to the database



## Results after making the index

### Results for query with madrid: INDEX SEARCH
```sql
select /*+ index(editions) */ * from editions    where pub_place='Madrid';

82450 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 4255503933

------------------------------------------------------------------------------------------------
| Id  | Operation                           | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT                    |          | 86788 |    81M| 32704   (1)| 00:00:02 |
|   1 |  TABLE ACCESS BY INDEX ROWID BATCHED| EDITIONS | 86788 |    81M| 32704   (1)| 00:00:02 |
|*  2 |   INDEX RANGE SCAN                  | IDX_ED1  | 86788 |       |   265   (1)| 00:00:01 |
------------------------------------------------------------------------------------------------


Predicate Information (identified by operation id):
---------------------------------------------------

   2 - access("PUB_PLACE"='Madrid')

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
          7  recursive calls
          0  db block gets
      18255  consistent gets
       7572  physical reads
          0  redo size
   19595058  bytes sent via SQL*Net to client
      60855  bytes received via SQL*Net from client
       5498  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
      82450  rows processed
```
### Results for query with segovia: INDEX SEARCH
```sql
select /*+ index(editions) */ * from editions    where pub_place='Segovia';

71 rows selected.


Execution Plan
----------------------------------------------------------
Plan hash value: 4255503933

------------------------------------------------------------------------------------------------
| Id  | Operation                           | Name     | Rows  | Bytes | Cost (%CPU)| Time     |
------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT                    |          |    71 | 70219 |    30   (0)| 00:00:01 |
|   1 |  TABLE ACCESS BY INDEX ROWID BATCHED| EDITIONS |    71 | 70219 |    30   (0)| 00:00:01 |
|*  2 |   INDEX RANGE SCAN                  | IDX_ED1  |    71 |       |     3   (0)| 00:00:01 |
------------------------------------------------------------------------------------------------


Predicate Information (identified by operation id):
---------------------------------------------------

   2 - access("PUB_PLACE"='Segovia')

Note
-----
   - dynamic statistics used: dynamic sampling (level=2)


Statistics
----------------------------------------------------------
          0  recursive calls
          0  db block gets
         80  consistent gets
          0  physical reads
          0  redo size
      18569  bytes sent via SQL*Net to client
        444  bytes received via SQL*Net from client
          6  SQL*Net roundtrips to/from client
          0  sorts (memory)
          0  sorts (disk)
         71  rows processed
```


