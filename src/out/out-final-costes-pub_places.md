# Results of package with cluster on pub_places
```sql
SQL> begin
  2  PKG_COSTES.RUN_TEST(10);
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
RESULTS AT 06/05/2025 18:16:57
TIME CONSUMPTION (run): 1131.3 milliseconds.
CONSISTENT GETS (workload):59387 acc
CONSISTENT GETS (weighted average):5938.7 acc

PL/SQL procedure successfully completed.

SQL>
```

# Results of package with cluster on publishers
```sql
SQL> begin
  2  pkg_costes.run_test(10);
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
RESULTS AT 06/05/2025 18:26:10
TIME CONSUMPTION (run): 1845.5 milliseconds.
CONSISTENT GETS (workload):115928.4 acc
CONSISTENT GETS (weighted average):11592.84 acc

PL/SQL procedure successfully completed.

```

## Results with publishers and hints
```sql
SQL> set serveroutput on
SQL> begin
  2  pkg_costes.run_test(10);
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
RESULTS AT 06/05/2025 18:36:45
TIME CONSUMPTION (run): 1231.9 milliseconds.
CONSISTENT GETS (workload):114324 acc
CONSISTENT GETS (weighted average):11432.4 acc

PL/SQL procedure successfully completed.

```
