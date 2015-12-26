create view monthly_elec_adu as
	 select date_trunc('month', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS'))::date as "month",
	 sum(value) as "sum",
	 count(*) as "n" from
	 elec_adu group by 1;

