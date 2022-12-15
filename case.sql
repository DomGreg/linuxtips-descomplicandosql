-- Databricks notebook source
select *,
  case 
  when descUF = 'SP' THEN 'Paulista'  
  when descUF = 'RJ' THEN 'Fluminense'
  when descUF in ('SC','Sc','sc') THEN 'Catarinense'
  else 'outros'
  end as descNacionalidade 

from silver_olist.cliente

-- COMMAND ----------

select *,
  case 
  when descUF = 'SP' THEN 'Paulista'  
  when descUF = 'RJ' THEN 'Fluminense'
  when descUF in ('SC','Sc','sc') THEN 'Catarinense'
  else 'outros'
  end as descNacionalidade, 
  
  case when descCidade like '%sao%' then 'tem são no nome'
  else 'não tem são no nome'
  end as descCIdadeSao
  
from silver_olist.cliente
