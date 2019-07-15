drop database if exists qfbap_dws cascade;
create database qfbap_dws;
drop table if exists qfbap_dws.dws_user_visit_month1;
create table qfbap_dws.dws_user_visit_month1
(
  user_id          bigint ,
  type             string ,
  cnt              bigint ,
  content          string ,
  rn               bigint ,
  de_date          string 
)
partitioned by (dt string)
location '/qfbap/dws/dws_user_visit_month1'
;






1. DWS层SQL实现
--列转行
insert overwrite table qfbap_dws.dws_user_visit_month1 partition(dt=20190708)
select
a.user_id,
a.type,
a.cnt,
a.content,
a.rn,
current_timestamp() dw_date
from(
select
t.user_id,
t.type,
t.cnt,
t.content,
row_number() over(distribute by user_id,type sort by cnt desc) rn
from(
select
user_id,
'visit_ip' as type,
sum(pv) as cnt,
visit_ip as content
from
qfbap_dwd.dwd_user_pc_pv
group by
user_id,
visit_ip
union all
select
user_id,
'cookie_id' as type,
sum(pv) as cnt,
cookie_id as content
from
qfbap_dwd.dwd_user_pc_pv
group by
user_id,
cookie_id
union all
select
user_id,
'browser_name' as type,
sum(pv) as cnt,
browser_name as content
from
qfbap_dwd.dwd_user_pc_pv
group by
user_id,
browser_name
union all
select
user_id,
'visit_os' as type,
sum(pv) as cnt,
visit_os as content
from
qfbap_dwd.dwd_user_pc_pv
group by
user_id,
visit_os
) t
) a