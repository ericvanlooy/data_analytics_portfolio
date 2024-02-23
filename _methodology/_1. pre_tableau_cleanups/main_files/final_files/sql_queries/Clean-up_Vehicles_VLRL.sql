update vehicles 
set vehicle_location_restricted_lane = trim(regexp_replace(vehicle_location_restricted_lane, '\s+', ' ', 'g'));

SELECT DISTINCT vehicle_location_restricted_lane  
FROM vehicles v ;


