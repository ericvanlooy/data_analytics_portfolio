ALTER TABLE collisions
ADD COLUMN first_road varchar,
ADD COLUMN second_road varchar;

UPDATE collisions 
SET first_road = CASE
  WHEN first_road_number <> '0' THEN CONCAT(first_road_class, first_road_number)
  ELSE first_road_class
END,
second_road = CASE
  WHEN second_road_number <> '0' THEN CONCAT(second_road_class, second_road_number)
  ELSE second_road_class
END;