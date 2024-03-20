update 
	casualties 
SET pedestrian_movement = trim(regexp_replace(pedestrian_movement, '\s+', ' ', 'g')),
casualty_type = trim(regexp_replace(casualty_type , '\s+', ' ', 'g'));

