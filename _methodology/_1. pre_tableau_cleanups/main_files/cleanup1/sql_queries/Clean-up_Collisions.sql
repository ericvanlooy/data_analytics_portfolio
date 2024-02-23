UPDATE collisions
SET 
  accident_severity = (
    SELECT collisions_guidance.accident_severity
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.accident_severity
  ),
  day_of_week = (
    SELECT collisions_guidance.day_of_week
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.day_of_week
  ),
  first_road_class = (
    SELECT collisions_guidance.first_road_class
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.first_road_class 
  ),
  road_type = (
    SELECT collisions_guidance.road_type
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.road_type
  ),
  junction_detail = (
    SELECT collisions_guidance.junction_detail 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.junction_detail 
  ),
    junction_control = (
    SELECT collisions_guidance.junction_control 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.junction_control 
  ),
    second_road_class = (
    SELECT collisions_guidance.second_road_class 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.second_road_class
  ),
  pedestrian_crossing_human_control  = (
    SELECT collisions_guidance.pedestrian_crossing_human_control 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.pedestrian_crossing_human_control 
  ),
  pedestrian_crossing_physical_facilities  = (
    SELECT collisions_guidance.pedestrian_crossing_physical_facilities 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.pedestrian_crossing_physical_facilities 
  ),
  light_conditions = (
    SELECT collisions_guidance.light_conditions 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.light_conditions
  ),
  weather_conditions  = (
    SELECT collisions_guidance.weather_conditions 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.weather_conditions 
  ),
  road_surface_conditions = (
    SELECT collisions_guidance.road_surface_conditions 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.road_surface_conditions
  ),
  special_conditions_at_site  = (
    SELECT collisions_guidance.special_conditions_at_site  
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.special_conditions_at_site
  ),
  carriageway_hazards = (
    SELECT collisions_guidance.carriageway_hazards 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.carriageway_hazards
  ),
  urban_or_rural_area = (
    SELECT collisions_guidance.urban_or_rural_area 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.urban_or_rural_area
  ),
  did_police_officer_attend_scene_of_accident = (
    SELECT collisions_guidance.did_police_officer_attend_scene_of_accident 
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.did_police_officer_attend_scene_of_accident 
  ),
  trunk_road_flag = (
    SELECT collisions_guidance.trunk_road_flag  
    FROM collisions_guidance
    WHERE collisions_guidance."Code" = collisions.trunk_road_flag
  )
  