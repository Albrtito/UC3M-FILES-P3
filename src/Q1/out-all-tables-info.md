# Results after running the query
```sql
select table_name, avg_row_len, num_rows, blocks from user_tables;
```


### After adding that new line to the NEW_load.sql


> !(ATTENTION) THE TABLE STATISTICS ARE EMPTY
> We need to compute statistics again using:

``` sql 
ANALYZE TABLE name COMPUTE statistics;
ANALYZE TABLE name estimate statistics sample 10 percent;
```
```sql

select table_name, avg_row_len, num_rows, blocks from user_tables;

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
ASSIGN_BUS
ASSIGN_DRV
BIBUS                                                                                                                                      0
              0          5
BIBUSERO                                                                                                                                   0
              0          5
BIBUSERO_STATE                                                                                                                             0
              0          5
BIBUSES
BIBUS_STATE                                                                                                                                0
              0          5
BOOKS
BOOK_ENTRIES                                                                                                                               0
              0          5
BOOK_LOANS                                                                                                                                 0
              0          0
BOOK_RESERVATIONS                                                                                                                          0
              0          5

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
COPIES
DRIVERS
EDITIONS
ID_ROUTES                                                                                                                                  6
            150          5
LOANS
MORE_AUTHORS
MUNICIPALITIES
MUNICIPALITY                                                                                                                               0
              0          0
M_LIBRARY                                                                                                                                  0
              0          0
POSTS
ROUTES

TABLE_NAME                                                                                                                       AVG_ROW_LEN   NUM_ROWS     BLOCKS
-------------------------------------------------------------------------------------------------------------------------------- ----------- ---------- ----------
SERVICES
SROUTES                                                                                                                                    0
              0          5
STOPS
BOOK_EDITIONS                                                                                                                              0
              0          0
COURSES                                                                                                                                    0
              0          5
ENROLLMENTS                                                                                                                                0
              0          5
PROFESSORS                                                                                                                                 0
              0          5
STUDENTS                                                                                                                                   0
              0          5
USERS

31 rows selected
```

