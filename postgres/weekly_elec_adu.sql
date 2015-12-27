create view weekly_elec_adu as
	 select date_trunc('week', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS'))::date as
	 "week", sum(value) as "sum",
	 count(*) as "n" from elec_adu group by 1 order by week;

