create view elec_combined as select * from elec left inner join minute_elec2 on (to_timestamp(elec.timestamp, 'YYYY-MM-DD HH24:MI:SS') = minute_elec2.timestamp);

