select age_band_of_driver_dvla, accident_year, sex_of_driver, count(*) as number_of_drivers
from vehicles v 
where sex_of_driver IN ('Female','Male') and not age_band_of_driver_dvla ilike 'Missing%'
group by age_band_of_driver_dvla , accident_year , sex_of_driver 
order by accident_year , age_band_of_driver_dvla , sex_of_driver 