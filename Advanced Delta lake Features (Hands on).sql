-- Databricks notebook source
DESCRIBE HISTORY employee1


-- COMMAND ----------

select * from employee1;

-- COMMAND ----------

--version 1 employee1 table before updating it

select * from employee1 version as of 1

-- COMMAND ----------

select * from employee1 @v1

-- COMMAND ----------

DELETE from employee1;

-- COMMAND ----------

select * from employee1

-- COMMAND ----------

restore table employee1 To version as of 2

-- COMMAND ----------

select * from employee1

-- COMMAND ----------

DESCRIBE HISTORY employee1

-- COMMAND ----------

-- ALSO VACCUM COMMAND TO DELETE FILES AND RETAIN COMMAND RETAIN FILES..
