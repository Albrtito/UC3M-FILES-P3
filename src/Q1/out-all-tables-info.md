# Results after running the query
```sql
select table_name, avg_row_len, num_rows, blocks from user_tables;
```


### After adding that new line to the NEW_load.sql


> !(ATTENTION) THE TABLE STATISTICS ARE EMPTY
> We need to compute statistics again using:

**Initial output of the command** 

```sql
SQL> select table_name, avg_row_len, num_rows, blocks from user_tables;

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
ASSIGN_BUS
ASSIGN_DRV
BIBUS                                                                                                                                      0          0          5
BIBUSERO                                                                                                                                   0          0          5
BIBUSERO_STATE                                                                                                                             0          0          5
BIBUSES
BIBUS_STATE                                                                                                                                0          0          5
BOOKS
BOOK_EDITIONS                                                                                                                              0          0          0
BOOK_ENTRIES                                                                                                                               0          0          5
BOOK_LOANS                                                                                                                                 0          0          0

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
BOOK_RESERVATIONS                                                                                                                          0          0          5
COPIES
COURSES                                                                                                                                    0          0          5
DRIVERS
EDITIONS                                                                                                                                 221     240632       7552
ENROLLMENTS                                                                                                                                0          0          5
ID_ROUTES                                                                                                                                  6        150          5
LOANS
MORE_AUTHORS
MUNICIPALITIES
MUNICIPALITY                                                                                                                               0          0          0

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
M_LIBRARY                                                                                                                                  0          0          0
POSTS
PROFESSORS                                                                                                                                 0          0          5
ROUTES
SERVICES
SROUTES                                                                                                                                    0          0          5
STOPS
STUDENTS                                                                                                                                   0          0          5
USERS

31 rows selected.

```

