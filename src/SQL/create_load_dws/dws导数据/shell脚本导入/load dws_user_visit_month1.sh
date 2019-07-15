#!/bin/bash

#run with args.eg: ./load_dws_user_visit_month1.sh 20181225
args=$1
dt=
if [ ${#args} == 0 ]
then
dt=`date -d "1 days ago" "+%Y%m%d"`
else
dt=$1
fi

#1. insert overwrite
echo "load dws_user_visit_month1"
hive -hivevar param_dt=${dt} -f load_dws_user_visit_month1.sql