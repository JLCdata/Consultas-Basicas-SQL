-- Big Query permite crear una tabla dandole un "ejemplo":

create or replace table `dev-mlc-546.BIA.BT_STK1P_SKU` as 
(select 0 as A_0a15, 0 as A_16a30, 0 as A_31a45, 0 as A_46a60, 
0 as A_61a90, 0 as A_91a180, 0 as A_mas180, cast('2020-01-01' as date) as TIM_DAY, 
17 as SEMANA, 'First Party' as INICIATIVA, 'MLB' as SIT_SITE_ID, 480265022 as CUS_CUST_ID, 
'1P CPG_MLB' as CUS_NICKNAME, 'Yoki' as ITE_ATT_BRAND, 'FGYP30879' as inventory_id, 
124623 as id_material, 'No FS' as FREE_SHIPPING_FLAG, 'No PSJ' as PSJ_FLAG, 
1600888757 as ITE_ITEM_ID, 'Fuba Mimoso 500g' as ITE_ITEM_TITLE, 'P' as ITE_ITEM_STATUS,
0 as ITE_ITEM_ACTIVED, 2.26 as preco_anuncio_lc, 0 as ORDERS, 0 as SI, 0.00 as GMV,
0.00 as GMVLC, 0 as TORDERS, 0 as TSI, 0 as TGMV, 0 as TGMVLC, 0 as Stock_saleable,
0.00 as Stock_saleable_valorizado_USD, 0 as Stock_fiscal_issues, 0.00 as Stock_fiscal_issues_valorizado_USD,
0 as Stock_QTY, 0.00 as Stock_valorizado_USD, 0.00 as Stock_valorizado_SALEP_USD, 0.00 as Stock_valorizado_LC,
0.00 as Stock_valorizado_SALEP_LC, '' as gmvlc_siniva, '' as si_valorizado_lc, '' as agreement_amount_lc, 
'' as gmvlc_siniva_est, '' as si_valorizado_estimado_lc, '' as agreement_amount_estimated_lc,
'CPG_FOODS_DRY FOOD_DRY FOOD' as HIERARQUIA, 'CPG' as DESC_H1, 'FOODS' as DESC_H2, 'DRY FOOD' as DESC_H3, 
'DRY FOOD' as DESC_H4, 0 as dias_stk_saleable_1a30, 0 as si_1a30, 30 as QtdDiasSemEstoque_1a30, 30 as QtdDiasSku_1a30,
44175 as DtPrimeiroRegistroItem, 44178 as DtPrimeiraVenda)
