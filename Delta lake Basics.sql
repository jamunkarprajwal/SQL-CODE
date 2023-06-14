-- Databricks notebook source
create table employee1
(id int, name string,salary double);

-- COMMAND ----------

show databases;
use default;
show tables;
select * from employee;


-- COMMAND ----------

 select * from employee1;
 describe detail employee1;


-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employee1'

-- COMMAND ----------

insert into employee1(id,name,salary)
values (1,'A',100),(2,'B',200),(3,'C',300),(4,'D',400);

select * from employee1;

-- COMMAND ----------

describe detail employee1;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employee1'

-- COMMAND ----------

DESCRIBE HISTORY employee1;

-- COMMAND ----------

update employee1
set salary=salary+100
where name like "%A";

-- COMMAND ----------

select * from employee1;

-- COMMAND ----------

describe table employee1;

-- COMMAND ----------

describe history employee1;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employee1'
