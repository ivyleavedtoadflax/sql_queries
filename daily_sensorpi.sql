create view daily_sensorpi as
	 select date_trunc('day', timestamp) as
	 "day",
	 round(median(int_temp1)::numeric,2) as "int_temp1",
	 round(median(int_temp2)::numeric,2) as "int_temp2",
	 round(median(ext_temp1)::numeric,2) as "ext_temp1",
	 round(median(int_light)::numeric,0) as "int_light",
	 round(median(int_humidity)::numeric,2) as "int_humidity"
	 from sensorpi group by 1;

