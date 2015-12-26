create view daily_elec_adu as
	 select date_trunc('day', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS'))::date as
	 "day", round(sum(value)::numeric,2) as "sum", count(*) as "n"
	 from elec_adu group by 1;

