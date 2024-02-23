UPDATE casualties 
SET 
  casualty_class  = (
    SELECT casualty_guidance.casualty_class 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.casualty_class 
  ),
  sex_of_casualty  = (
    SELECT casualty_guidance.sex_of_casualty 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.sex_of_casualty 
  ),
  age_band_of_casualty  = (
    SELECT casualty_guidance.age_band_of_casualty 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.age_band_of_casualty
  ),
  casualty_severity  = (
    SELECT casualty_guidance.casualty_severity 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.casualty_severity 
  ),
  pedestrian_location  = (
    SELECT casualty_guidance.pedestrian_location 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.pedestrian_location 
  ),
    pedestrian_movement  = (
    SELECT casualty_guidance.pedestrian_movement
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.pedestrian_movement
  ),
    car_passenger  = (
    SELECT casualty_guidance.car_passenger 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.car_passenger 
  ),
  bus_or_coach_passenger  = (
    SELECT casualty_guidance.bus_or_coach_passenger 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.bus_or_coach_passenger
  ),
  pedestrian_road_maintenance_worker  = (
    SELECT casualty_guidance.pedestrian_road_maintenance_worker 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.pedestrian_road_maintenance_worker 
  ),
  casualty_type = (
    SELECT casualty_guidance.casualty_type 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.casualty_type
  ),
  casualty_home_area_type  = (
    SELECT casualty_guidance.casualty_home_area_type 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.casualty_home_area_type 
  ),
  casualty_imd_decile  = (
    SELECT casualty_guidance.casualty_imd_decile 
    FROM casualty_guidance
    WHERE casualty_guidance."Code" = casualties.casualty_imd_decile
  );