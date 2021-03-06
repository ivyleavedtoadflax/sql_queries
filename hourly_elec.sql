create view hourly_elec as
	 select extract(hour from timestamp::timestamp) as
	 "hour", round(median(value)::numeric,3) as "median",
	 round(avg(value)::numeric,3) as "mean",count(*) as "n"
	 from elec group by hour order by hour;

