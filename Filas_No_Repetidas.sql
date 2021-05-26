-- Llave primaria: TIM_DAY, ITE_ITEM_ID

-- Cuenta cuantas veces aparece cada combinación  de TIM_DAY, ITE_ITEM_ID (deberia ser una vez para todas las filas)
SELECT count(ITE_ITEM_ID) FROM `dev-mlc-546.1P.BT_STK1P_SKU` group by TIM_DAY,ITE_ITEM_ID;


--Max repeticion, deberia ser 1:
select max(count) from (SELECT count(ITE_ITEM_ID) as count FROM `dev-mlc-546.1P.BT_STK1P_SKU` group by TIM_DAY,ITE_ITEM_ID);
