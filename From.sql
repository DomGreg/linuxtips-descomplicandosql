-- Databricks notebook source
 select * from silver_olist.pagamento_pedido

-- COMMAND ----------

select
  idPedido,
  descSituacao
from
  silver_olist.pedido
limit
  5

-- COMMAND ----------

select
  *,
  datediff(dtEstimativaEntrega,dtEntregue) as TempodeEntrega 
from
  silver_olist.pedido
  
Limit
 2
