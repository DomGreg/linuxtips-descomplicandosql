-- Databricks notebook source
select
 descUF as Estados,
 count (distinct idClienteUnico) as Clientes_Unicos
      
from silver_olist.cliente
group by descUF
