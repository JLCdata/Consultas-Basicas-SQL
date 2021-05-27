-- Clientes totales y clientes nuevos por dia:

-- Se obtiene la fecha de la primera vez que compro el cliente:
-- cast(ORD_CLOSED_DTTM as date) transforma el campo que contiene hora y fecha en solo fecha, luego se agrupa por fecha, ignorando la hora de compra:

with AUX as (select ORD_BUYER.ID as cust_id,min(cast(ORD_CLOSED_DTTM as date)) as FIRST_BUY from `meli-bi-data.WHOWNER.BT_ORD_ORDERS`  
where sit_site_id = 'MLC' and ORD_GMV_FLG is true group by 1)

select cast(ORD_CLOSED_DTTM as date) as FECHA, count(distinct(ORD_BUYER.ID)) as UNIQ_BUYERS,
count(distinct(case when tabla.FIRST_BUY=cast(ORD_CLOSED_DTTM as date)then O.ORD_BUYER.ID else null end)) as NEW_BUYERS 
from `meli-bi-data.WHOWNER.BT_ORD_ORDERS` as O left join AUX on AUX.cust_id=O.ORD_BUYER.ID
where cast(ORD_CLOSED_DTTM as date) 
between '2020-08-31' and '2020-09-02' and o.ORD_GMV_FLG is true and o.SIT_SITE_ID = 'MLC'  group by 1;


-- Clientes totales y clientes nuevos por todo el periodo:

with tabla as (select ORD_BUYER.ID as cust_id,min(cast(ORD_CLOSED_DTTM as date)) as FIRST_BUY from `meli-bi-data.WHOWNER.BT_ORD_ORDERS`  
where sit_site_id = 'MLC' and ORD_GMV_FLG is true group by 1)

select  count(distinct(ORD_BUYER.ID)) as UNIQ_BUYERS,
count(distinct(case when tabla.FIRST_BUY=cast(ORD_CLOSED_DTTM as date)then O.ORD_BUYER.ID else null end)) as NEW_BUYERS 
from `meli-bi-data.WHOWNER.BT_ORD_ORDERS` as O left join tabla on tabla.cust_id=O.ORD_BUYER.ID
where cast(ORD_CLOSED_DTTM as date) 
between '2020-08-31' and '2020-09-02' and o.ORD_GMV_FLG is true and o.SIT_SITE_ID = 'MLC' 
