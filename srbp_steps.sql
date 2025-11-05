1. SDK - gcloud auth login  > gcloud init, gcloud auth login/ putty to VM wiht SDK

gsutil mb -l us-central1 -c standard gs://srbp_43_43   or gcloud storage buckets create gs://srbp_43

gsutil ls gs://srbp_43/ or gcloud storage bucket list gs://srbp_43/

gsutil cp D:\gcp\vedios\gcp\docs\Usecases-20251030T144118Z-1-001\SRBP-20251104T140105Z-1-001\SRBP\SRBP_Datasets\*.csv gs://srbp_43 

or

gcloud storage cp D:\gcp\vedios\gcp\docs\Usecases-20251030T144118Z-1-001\SRBP-20251104T140105Z-1-001\SRBP\SRBP_Datasets\*.csv gs://srbp_43

gsutil ls gs://srbp_43/  or gcloud storage bucket list gs://srbp_43/

gsutil cat gs://srbp_43//FUND_CASH.csv or gcloud cat gs://srbp_43//FUND_CASH.csv 

bq mk --dataset srbp_43_stg_ds 
bq mk --dataset srbp_43_hist_ds 
bq mk --dataset srbp_43_views_ds 

bq mk --dataset audit_stg_ds 
create table audit_stg_ds.stage_audit_emp(
  dataset_name string,
  table_name string,
  date_audit date,
  total_record_count int64,
  audited_by string
)
bq mk --dataset audit_hist_ds 
create table audit_hist_ds.history_audit_emp(
  dataset_name string,
  table_name string,
  date_audit date,
  total_record_count int64,
  audited_by string
)

bq ls 
bq ls srbp_43_stg_ds
bq show srbp_43_stg_ds

bq mk --table srbp_43_stg_ds.FUND_CASH FUND_CASH_ACCT_SEQ:STRING,INVST_PLAN_ARR_SEQ:STRING,ACCT_CASH_FUND:STRING,ACCT_CASH_FUND_TYPE_CDE:STRING,CCY_ACCT_CASH_FUND_CDE:STRING,LAST_INGESTION_TIMESTAMP:STRING,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_hist_ds.FUND_CASH FUND_CASH_ACCT_SEQ:NUMERIC,INVST_PLAN_ARR_SEQ:NUMERIC,ACCT_CASH_FUND:STRING,ACCT_CASH_FUND_TYPE_CDE:STRING,CCY_ACCT_CASH_FUND_CDE:STRING,LAST_INGESTION_TIMESTAMP:TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_stg_ds.GHSS_ACCT ACCT_INVST_NUM:STRING,GRP_MEMBER_CDE:STRING,CTRY_CDE:STRING,CE_INCM_CASH_ACCT_TYPE:STRING,CE_INCM_CASH_ACCT_CCY_CDE:STRING,CE_INCM_CASH_ACCT:STRING,LAST_INGESTION_TIMESTAMP:STRING,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

---
bq mk --table srbp_43_hist_ds.GHSS_ACCT ACCT_INVST_NUM:STRING,GRP_MEMBER_CDE:STRING,CTRY_CDE:STRING,CE_INCM_CASH_ACCT_TYPE:STRING,CE_INCM_CASH_ACCT_CCY_CDE:STRING,CE_INCM_CASH_ACCT:STRING,LAST_INGESTION_TIMESTAMP:TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_stg_ds.INVST_PLAN INVST_PLAN_ARR_SEQ_NUM:STRING,SEQ_DISP_NUM:STRING,CTRY_INVST_ACCT_CDE:STRING,GRP_MEMBR_INVST_ACCT_CDE:STRING,ACCT_INVST_NUM:STRING,ENGMT_STYLE_CDE:STRING,INVST_PLAN_NUM:STRING,INVST_PLAN_STAT_CDE:STRING,PDCY_INVST_CDE:STRING,PLAN_INSTR_NEXT_TM:STRING,PLAN_INSTR_NEXT_DT:STRING,CCY_INVST_REG_CDE:STRING,INVST_REG_AMT:STRING,CCY_INVST_ACCUM_CDE:STRING,INVST_ACCUM_AMT:STRING,CNTRB_SUCS_TTL_CNT:STRING,CNTRB_LAST_DT_TM:STRING,MDUN_SYS_CDE:STRING,LAST_INGESTION_TIMESTAMP:STRING,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_hist_ds.INVST_PLAN INVST_PLAN_ARR_SEQ_NUM:NUMERIC,SEQ_DISP_NUM:STRING,CTRY_INVST_ACCT_CDE:STRING,GRP_MEMBR_INVST_ACCT_CDE:STRING,ACCT_INVST_NUM:STRING,ENGMT_STYLE_CDE:STRING,INVST_PLAN_NUM:STRING,INVST_PLAN_STAT_CDE:STRING,PDCY_INVST_CDE:STRING,PLAN_INSTR_NEXT_TM:TIMESTAMP,PLAN_INSTR_NEXT_DT:DATE,CCY_INVST_REG_CDE:STRING,INVST_REG_AMT:NUMERIC,CCY_INVST_ACCUM_CDE:STRING,INVST_ACCUM_AMT:NUMERIC,CNTRB_SUCS_TTL_CNT:NUMERIC,CNTRB_LAST_DT_TM:TIMESTAMP,MDUN_SYS_CDE:STRING,LAST_INGESTION_TIMESTAMP:TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_stg_ds.INVST_PLAN_PROD INVS_PLN_ARR_PRD_SEQ_NUM:STRING,INVST_PLAN_ARR_SEQ_NUM:STRING,PROD_ALT_NUM:STRING,PROD_CDE_ALT_CLASS_CDE:STRING,CTRY_PROD_TRADE_CDE:STRING,ASET_CLASS_CDE:STRING,LAST_INGESTION_TIMESTAMP:STRING,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_hist_ds.INVST_PLAN_PROD INVS_PLN_ARR_PRD_SEQ_NUM:NUMERIC,INVST_PLAN_ARR_SEQ_NUM:NUMERIC,PROD_ALT_NUM:STRING,PROD_CDE_ALT_CLASS_CDE:STRING,CTRY_PROD_TRADE_CDE:STRING,ASET_CLASS_CDE:STRING,LAST_INGESTION_TIMESTAMP:TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_stg_ds.MIG_UINVST_ACCT ACCT_EXTNL_NUM:STRING,SYS_EXTNL_CDE:STRING,CTRY_INVST_ACCT_CDE:STRING,GRP_MEMBR_INVST_ACCT_CDE:STRING,SRCE_SYS_NAME:STRING,ACCT_MIG_FUND_IND:STRING,LAST_INGESTION_TIMESTAMP:STRING,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq mk --table srbp_43_hist_ds.MIG_UINVST_ACCT ACCT_EXTNL_NUM:STRING,SYS_EXTNL_CDE:STRING,CTRY_INVST_ACCT_CDE:STRING,GRP_MEMBR_INVST_ACCT_CDE:STRING,SRCE_SYS_NAME:STRING,ACCT_MIG_FUND_IND:STRING,LAST_INGESTION_TIMESTAMP:TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER:STRING,CTRY_CDE_FILTER:STRING,ENTITY_CDE_FILTER:STRING

bq load --source_format=CSV --skip_leading_rows=1  srbp_43_stg_ds.FUND_CASH gs://srbp_43/FUND_CASH.csv

insert into audit_stg_ds.stage_audit_emp
select 'audit_stg_ds' as dataset_name,
'FUND_CASH' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_stg_ds.FUND_CASH ;

insert into srbp_43_hist_ds.FUND_CASH
select safe_cast (FUND_CASH_ACCT_SEQ as	int64) as FUND_CASH_ACCT_SEQ,
safe_cast( INVST_PLAN_ARR_SEQ as	int64) as INVST_PLAN_ARR_SEQ,
ACCT_CASH_FUND	,
ACCT_CASH_FUND_TYPE_CDE	,
CCY_ACCT_CASH_FUND_CDE	,
current_timestamp()	as LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER	,
CTRY_CDE_FILTER	,
ENTITY_CDE_FILTER	
from srbp_43_stg_ds.FUND_CASH;

insert into audit_hist_ds.history_audit_emp
select 'audit_hist_ds' as dataset_name,
'FUND_CASH' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_hist_ds.FUND_CASH


bq load --source_format=CSV --skip_leading_rows=1  srbp_43_stg_ds.GHSS_ACCT gs://srbp_43/GHSS.csv

insert into audit_stg_ds.stage_audit_emp
select 'audit_stg_ds' as dataset_name,
'GHSS_ACCT' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_stg_ds.GHSS_ACCT ;

insert into srbp_43_hist_ds.GHSS_ACCT
select ACCT_INVST_NUM,GRP_MEMBER_CDE,CTRY_CDE,CE_INCM_CASH_ACCT_TYPE,CE_INCM_CASH_ACCT_CCY_CDE,CE_INCM_CASH_ACCT	,current_timestamp()	as LAST_INGESTION_TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER,CTRY_CDE_FILTER,ENTITY_CDE_FILTER from srbp_43_stg_ds.GHSS_ACCT

insert into audit_hist_ds.history_audit_emp
select 'audit_hist_ds' as dataset_name,
'GHSS_ACCT' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_hist_ds.GHSS_ACCT

bq load --source_format=CSV --skip_leading_rows=1 srbp_43_stg_ds.INVST_PLAN gs://srbp_43/INVESTMENT_DATA.csv

insert into audit_stg_ds.stage_audit_emp
select 'audit_stg_ds' as dataset_name,
'INVST_PLAN' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_stg_ds.INVST_PLAN ;

insert into srbp_43_hist_ds.INVST_PLAN 
select safe_cast(INVST_PLAN_ARR_SEQ_NUM as	int64) as INVST_PLAN_ARR_SEQ_NUM,SEQ_DISP_NUM	,CTRY_INVST_ACCT_CDE	,GRP_MEMBR_INVST_ACCT_CDE	,ACCT_INVST_NUM	,ENGMT_STYLE_CDE	,INVST_PLAN_NUM	,INVST_PLAN_STAT_CDE	,PDCY_INVST_CDE	,current_timestamp()	as PLAN_INSTR_NEXT_TM	, parse_date('%Y-%m-%d',PLAN_INSTR_NEXT_DT ) as PLAN_INSTR_NEXT_DT,CCY_INVST_REG_CDE	,safe_cast(INVST_REG_AMT	 as int64) as INVST_REG_AMT,CCY_INVST_ACCUM_CDE	,safe_cast(INVST_ACCUM_AMT as	int64) as INVST_ACCUM_AMT,safe_cast(CNTRB_SUCS_TTL_CNT as	int64) as CNTRB_SUCS_TTL_CNT,current_timestamp()	as CNTRB_LAST_DT_TM	,MDUN_SYS_CDE	,current_timestamp()	as LAST_INGESTION_TIMESTAMP	,PRM_LNE_OF_BUS_CDE_FILTER	,CTRY_CDE_FILTER	,ENTITY_CDE_FILTER	 from srbp_43_stg_ds.INVST_PLAN

insert into audit_hist_ds.history_audit_emp
select 'audit_hist_ds' as dataset_name,
'INVST_PLAN' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_hist_ds.INVST_PLAN


bq load --source_format=CSV --skip_leading_rows=1 srbp_43_stg_ds.INVST_PLAN_PROD gs://srbp_43/INVESTMENT_PLAN.csv

insert into audit_stg_ds.stage_audit_emp
select 'audit_stg_ds' as dataset_name,
'INVST_PLAN_PROD' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_stg_ds.INVST_PLAN_PROD ;

insert into srbp_43_hist_ds.INVST_PLAN_PROD select safe_cast(INVS_PLN_ARR_PRD_SEQ_NUM	as NUMERIC) as INVS_PLN_ARR_PRD_SEQ_NUM,safe_cast(INVST_PLAN_ARR_SEQ_NUM as	NUMERIC) as INVST_PLAN_ARR_SEQ_NUM,PROD_ALT_NUM	,PROD_CDE_ALT_CLASS_CDE	,CTRY_PROD_TRADE_CDE	,ASET_CLASS_CDE	,current_timestamp()	as LAST_INGESTION_TIMESTAMP	,PRM_LNE_OF_BUS_CDE_FILTER	,CTRY_CDE_FILTER	,ENTITY_CDE_FILTER	from srbp_43_stg_ds.INVST_PLAN_PROD

insert into audit_hist_ds.history_audit_emp
select 'audit_hist_ds' as dataset_name,
'INVST_PLAN_PROD' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_hist_ds.INVST_PLAN_PROD



bq load --source_format=CSV --skip_leading_rows=1  srbp_43_stg_ds.MIG_UINVST_ACCT gs://srbp_43/UNINVESTMENT.csv

insert into audit_stg_ds.stage_audit_emp
select 'audit_stg_ds' as dataset_name,
'MIG_UINVST_ACCT' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_stg_ds.MIG_UINVST_ACCT ;

insert into srbp_43_hist_ds.MIG_UINVST_ACCT select ACCT_EXTNL_NUM,SYS_EXTNL_CDE,CTRY_INVST_ACCT_CDE,GRP_MEMBR_INVST_ACCT_CDE,SRCE_SYS_NAME,ACCT_MIG_FUND_IND,current_timestamp()	as  LAST_INGESTION_TIMESTAMP,PRM_LNE_OF_BUS_CDE_FILTER,CTRY_CDE_FILTER,ENTITY_CDE_FILTER from srbp_43_stg_ds.MIG_UINVST_ACCT

insert into audit_hist_ds.history_audit_emp
select 'audit_hist_ds' as dataset_name,
'MIG_UINVST_ACCT' as table_name,
current_date() as date_audit,
count(*) as total_record_count,
"kiran" as audited_by
from srbp_43_hist_ds.MIG_UINVST_ACCT



create or replace view srbp_43_views_ds.vw_FUND_CASH as 
select  FUND_CASH_ACCT_SEQ,
INVST_PLAN_ARR_SEQ,
ACCT_CASH_FUND,
ACCT_CASH_FUND_TYPE_CDE,
CCY_ACCT_CASH_FUND_CDE,
LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER,
CTRY_CDE_FILTER,
ENTITY_CDE_FILTER from srbp_43_hist_ds.FUND_CASH  ;


create or replace view srbp_43_views_ds.vw_GHSS_ACCT as 
select ACCT_INVST_NUM,
GRP_MEMBER_CDE,
CTRY_CDE,
CE_INCM_CASH_ACCT_TYPE,
CE_INCM_CASH_ACCT_CCY_CDE,
CE_INCM_CASH_ACCT,
LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER,
CTRY_CDE_FILTER,
ENTITY_CDE_FILTER from srbp_43_hist_ds.GHSS_ACCT        ;

create or replace view srbp_43_views_ds.vw_INVST_PLAN as 
select INVST_PLAN_ARR_SEQ_NUM,
SEQ_DISP_NUM,
CTRY_INVST_ACCT_CDE,
GRP_MEMBR_INVST_ACCT_CDE,
ACCT_INVST_NUM,
ENGMT_STYLE_CDE,
INVST_PLAN_NUM,
INVST_PLAN_STAT_CDE,
PDCY_INVST_CDE,
PLAN_INSTR_NEXT_TM,
PLAN_INSTR_NEXT_DT,
CCY_INVST_REG_CDE,
INVST_REG_AMT,
CCY_INVST_ACCUM_CDE,
INVST_ACCUM_AMT,
CNTRB_SUCS_TTL_CNT,
CNTRB_LAST_DT_TM,
MDUN_SYS_CDE,
LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER,
CTRY_CDE_FILTER,
ENTITY_CDE_FILTER from srbp_43_hist_ds.INVST_PLAN       ;

create or replace view srbp_43_views_ds.vw_INVST_PLAN_PROD as 
select INVS_PLN_ARR_PRD_SEQ_NUM,
INVST_PLAN_ARR_SEQ_NUM,
PROD_ALT_NUM,
PROD_CDE_ALT_CLASS_CDE,
CTRY_PROD_TRADE_CDE,
ASET_CLASS_CDE,
LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER,
CTRY_CDE_FILTER,
ENTITY_CDE_FILTER from srbp_43_hist_ds.INVST_PLAN_PROD  ;

create or replace view srbp_43_views_ds.vw_MIG_UINVST_ACCT as 
select ACCT_EXTNL_NUM,
SYS_EXTNL_CDE,
CTRY_INVST_ACCT_CDE,
GRP_MEMBR_INVST_ACCT_CDE,
SRCE_SYS_NAME,
ACCT_MIG_FUND_IND,
LAST_INGESTION_TIMESTAMP,
PRM_LNE_OF_BUS_CDE_FILTER,
CTRY_CDE_FILTER,
ENTITY_CDE_FILTER from srbp_43_hist_ds.MIG_UINVST_ACCT  ;


--views
select * from srbp_43_views_ds.vw_FUND_CASH  ;
select * from srbp_43_views_ds.vw_GHSS_ACCT  ;
select * from srbp_43_views_ds.vw_INVST_PLAN  ;
select * from srbp_43_views_ds.vw_INVST_PLAN_PROD  ;
select * from srbp_43_views_ds.vw_MIG_UINVST_ACCT  ;