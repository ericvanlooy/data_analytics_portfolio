UPDATE vehicles
SET 
  vehicle_type  = (
    SELECT vehicle_guidance.vehicle_type 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_type 
  ),
  towing_and_articulation = (
    SELECT vehicle_guidance.towing_and_articulation 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.towing_and_articulation 
  ),
  vehicle_manoeuvre = (
    SELECT vehicle_guidance.vehicle_manoeuvre 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_manoeuvre
  ),
  vehicle_direction_from = (
    SELECT vehicle_guidance.vehicle_direction_from 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_direction_from 
  ),
  vehicle_direction_to = (
    SELECT vehicle_guidance.vehicle_direction_to 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_direction_to 
  ),
    vehicle_location_restricted_lane = (
    SELECT vehicle_guidance.vehicle_location_restricted_lane
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_location_restricted_lane
  ),
    junction_location  = (
    SELECT vehicle_guidance.junction_location 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.junction_location 
  ),
  skidding_and_overturning  = (
    SELECT vehicle_guidance.skidding_and_overturning 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.skidding_and_overturning
  ),
  hit_object_in_carriageway  = (
    SELECT vehicle_guidance.hit_object_in_carriageway 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.hit_object_in_carriageway 
  ),
  vehicle_leaving_carriageway = (
    SELECT vehicle_guidance.vehicle_leaving_carriageway 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_leaving_carriageway
  ),
  hit_object_off_carriageway = (
    SELECT vehicle_guidance.hit_object_off_carriageway 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.hit_object_off_carriageway 
  ),
  first_point_of_impact = (
    SELECT vehicle_guidance.first_point_of_impact 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.first_point_of_impact
  ),
  vehicle_left_hand_drive  = (
    SELECT vehicle_guidance.vehicle_left_hand_drive  
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.vehicle_left_hand_drive
  ),
  journey_purpose_of_driver  = (
    SELECT vehicle_guidance.journey_purpose_of_driver 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.journey_purpose_of_driver 
  ),
  sex_of_driver = (
    SELECT vehicle_guidance.sex_of_driver 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.sex_of_driver
  ),
  age_band_of_driver  = (
    SELECT vehicle_guidance.age_band_of_driver 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.age_band_of_driver
  ),
  propulsion_code = (
    SELECT vehicle_guidance.propulsion_code  
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.propulsion_code 
  ),
  driver_imd_decile = (
    SELECT vehicle_guidance.driver_imd_decile 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.driver_imd_decile
  ),
  driver_home_area_type  = (
    SELECT vehicle_guidance.driver_home_area_type 
    FROM vehicle_guidance
    WHERE vehicle_guidance."Code" = vehicles.driver_home_area_type
  );