-- Version final TGMV
-- Uso de comando "WITH" para definir consultas auxiliares como tablas, se extrae información para las 12 semanas anteriores a la fecha actual:

with AUX as(select FLAGSHIP,T_WEEK,sum(TGMV) as LW12 from `dev-mlc-546.MASTER.MASTER_VIEW` where T_WEEK>=(EXTRACT(WEEK FROM CURRENT_DATE())-12) and 
T_WEEK<=(EXTRACT(WEEK FROM CURRENT_DATE())-1) and T_YEAR=2021  group by T_WEEK,FLAGSHIP)

-- Se calculan campos de ventas para las anteriores 1 semana, 4 semanas y 12 semanas:

select FLAGSHIP,avg(case when T_WEEK=(EXTRACT(WEEK FROM CURRENT_DATE())-1) then LW12 end) as LW_TGMV,avg(case when T_WEEK>=(EXTRACT(WEEK FROM CURRENT_DATE())-4) and 
T_WEEK<=(EXTRACT(WEEK FROM CURRENT_DATE())-1) then LW12 end) as LW4_TGMV,avg(LW12) as LW12_TGMV from AUX group by FLAGSHIP order by FLAGSHIP desc;



