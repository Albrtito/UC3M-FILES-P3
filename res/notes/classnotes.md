@2025-04-23

# Hints

* Hints dont have grammar correction from oracle -> Check manually if they don't work

# Autotrace
Autotrace proveides statistics and plans. Setting autotrace gives real a priori statistics. This is not done by default with statistics analyze of oracle. 
* Dont want to use it with the result of the query, because it'll give to much data 
```SQL
set autotrace on traceonly
```
