--The plan for the query
explain plan set statement_id = 'myplan_1' for select * from editions where pub_place='Madrid';

--Use autotrace for trace only
set autotrace on traceonly;

--Try again the query
select * from editions where pub_place='Madrid';


--select * from table(DBMS_XPLAN.DISPLAY);
--SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY(NULL, 'myplan_1', 'BASIC'));
--SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY(FORMAT=>'+ALLSTATS'));


