create view monthly_elec as select date_trunc('month', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS')) as "month", count(*) as "n" from elec group by 1;

