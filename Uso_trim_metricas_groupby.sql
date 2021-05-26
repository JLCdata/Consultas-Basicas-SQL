-- Uso de función "TRIM" que elimina los espacios de los string, se calculan metricas de sumas, agrupando por los campos correspondientes:

select TIM_DAY,ITE_ITEM_ID,ITE_ITEM_TITLE,sum(si_1a30) as si_1a30,sum(dias_stk_saleable_1a30) as dias_stk_saleable_1a30,
sum(A_0a15) as A_0a15,sum(A_16a30) as A_16a30, sum(A_31a45) as A_31a45, 
sum(A_46a60) as A_46a60, sum(A_61a90) as A_61a90, sum(A_91a180) as A_91a180, sum(A_mas180) as A_mas180, 
sum(Stock_QTY) as Stock_QTY  FROM `dev-mlc-546.1P.BT_STK1P_SKU` where TRIM(SIT_SITE_ID)='MLC' group by 1,2,3;
