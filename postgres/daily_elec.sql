create view daily_elec as
	 select date_trunc('day', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS')) as
	 "week", sum(value) as "sum", count(*) as "n", from elec group by 1;

