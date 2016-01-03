create view minute_elec2 as
	select date_trunc('minute',timestamp) as
	"timestamp",
	count(timestamp) * 0.001 as "value",
	rpi from elec2 group by 1,rpi order by timestamp desc;

