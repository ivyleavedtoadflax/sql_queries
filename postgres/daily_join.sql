--\i ~/Dropbox/SQL/median.sql

(select date_trunc('day', to_timestamp(timestamp,'YYYY-MM-DD HH24:MI:SS')) 
	as "day", 
	sum(value) as "n" from elec group by 1)
	left join
	(select date_trunc('day', timestamp) as "day", 
	median(int_temp1) as "int_temp1",
	median(int_temp2) as "int_temp2",
	median(ext_temp1) as "ext_temp1",
	median(int_light) as "int_light",
	median(int_humidity) as "int_humidity"
	from sensorpi
	group by 1)
	on "day"
	
