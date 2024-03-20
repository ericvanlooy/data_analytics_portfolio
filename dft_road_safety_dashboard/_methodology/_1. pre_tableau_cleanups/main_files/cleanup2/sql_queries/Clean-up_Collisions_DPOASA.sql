UPDATE collisions 
SET 
did_police_officer_attend_scene_of_accident = trim(regexp_replace(did_police_officer_attend_scene_of_accident , '\s+', ' ', 'g'));