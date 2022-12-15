-- Databricks notebook source
select count(*) as total,
count (DISTINCT idCliente) as Clientes,
count (idCliente) as Novo,
count (DISTINCT idClienteUnico) as unicos

from silver_olist.cliente

-- COMMAND ----------

select 

 round (percentile(vlPreco, 0.5),2) as media, 

 round (avg (vlFrete),2) as frete,
 round (avg (vlPreco),2) as preco,
 round(max (vlPreco),2) as maximo,
 int (min (vlPreco)) as minimo

from silver_olist.item_pedido
