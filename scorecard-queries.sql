--Check for any trip modifications (ADDED, CANCELED, ETC)
SELECT * FROM stop_time_updates WHERE schedule_relationship <>  'SCHEDULED'  LIMIT 10
SELECT MAX(timestamp), MIN(timestamp) from trip_updates LIMIT 1

--Check for crowding data coverage 
-- Vehicle coverage 
SELECT DISTINCT occupancy_status FROM vehicle_positions
SELECT MAX(timestamp), MIN(timestamp) from vehicle_positions 