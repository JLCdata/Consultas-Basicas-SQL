-- Uso de "EXTRACT" para obtener años y meses del campo fecha. Se suman los campos TSI si cumplen con la condición de ser LOGISTIC_TYPE='FBM'. Se suman las ventas a nivel de mes
y se dividen por "count(distinct(fecha_server))", que vendrian siendo la cantidad de días en el mes, ya que estan agrupos a nivel de año y mes. Finalmente se ordenan por año y mes.

select EXTRACT(year FROM fecha_server) as YEAR, EXTRACT(MONTH FROM fecha_server) as MONTH,sum(TGMV_LOC) as SUM_TGMV,									
sum(TSI) as SUM_TSI, sum(case when LOGISTIC_TYPE='FBM' then TSI else 0 end) as SUM_TSI_FBM,									
sum(TGMV_LOC)/count(distinct(fecha_server)) as AVG_DAY_TGMV from `meli-bi-data.EXPLOTACION.DM_MKP_ORDERS_MSTR` group by 1,2 order by YEAR,MONTH
