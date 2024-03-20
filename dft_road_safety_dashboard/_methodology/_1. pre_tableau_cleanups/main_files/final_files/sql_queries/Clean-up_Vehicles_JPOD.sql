update 
	vehicles
SET journey_purpose_of_driver = 'Other/Not known'
where journey_purpose_of_driver = 'Other' or journey_purpose_of_driver = 'Not known';


