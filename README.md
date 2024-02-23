# data_analytics_portfolio
Graduate project methodology

DATA COLLECTION

5 CSV files (1 per year: 2018-2022) of following MAIN datasets:
- collisions
- casualties
- vehicles

1 datasheet summarising road lengths per road type and local authority
- Road_Length_by_Local_authority_and_Road_Type
1 datasheet summarising traffic volumes per local authority over time (2018-2022)
- LA_vehicle_miles
1 GEO Legend combining hierarchies of local authorities, police forces and regions
- GEO_legend
2 DVLA datasheets on registered vehicle and license holder numbers
- dvla_licence_holder_stats
- dvla_vehicle_stats

Assumptions and executive decisions:
1. Road length data will be used for all years 2018 - 2022 due to small changes in length numbers over time
2. Road length for Heathrow authority is based on a Bing Copilot calculation, based on the below map
3. Volume assumptions were made for a number of local authorities that underwent changes within this period
	A. North and West Northamptionshire: missing volumes for 2018-2020 were added based on percentage difference between two authorities in 2021-2022 and extrapolated from 	Northamptionshire authority in 2018-2020
	B. Missing volumes for Bournemouth, Christchurch and Poole on one hand and Dorset on the other for 2018 were done in a similar fashion as above
	C. Volumes for Heathrow are an extrapolation of volumes of Greater London, based on a formula to estimate the vehicle miles travelled on the roads managed by the Heathrow Airport 		Highway Authority for each year:
	
	VMTH​=VMTL​×(LH/​LHL)
	where:

	VMTH​ is the vehicle miles travelled on the roads managed by the Heathrow Airport Highway Authority
	VMTL​ is the vehicle miles travelled in the London region
	LH​ is the length of the roads managed by the Heathrow Airport Highway Authority, which I estimated to be 27.1 miles in my previous answer
	LL​ is the length of the roads in the London region, which I estimated to be 6,000 miles based on this source

NOTE: Changes 3A and 3B were reversed at a later stage to complications created during discrete measure calculations

ADDITIONAL DATA CREATION
1. Radial heatmap X and Y coordinates
	Attribution: https://wjsutton.shinyapps.io/radial_heatmap/
	Tutorial: https://www.youtube.com/watch?app=desktop&v=j4hq6pQ4Lvw
2. Power Query-based transformations of existing data in the Vehicles dataset


EXCEL-BASED PREP WORK
1. Simple file mergers per main dataset category (collisions, casualties, vehicles)
2. Local authority name harmonisation
	- Highway Authorities
	- Local Authority Districts
	- Local Authority ONS Districts
3. Reformat guidance document in preparation of SQL Import

SQL-BASED PREP WORK
1. Import merged datasets
2. Assign primary and foreign keys (collisions > accident_index)
	ISSUE: A pkey could not be created, because some corrupted indexes had created duplication in accident_index. 
		A query helped to scope out 14 collision records, 31 vehicle records and 17 casualty records with index '##########'
	
		QUERY
		SELECT 
			accident_index,
			COUNT(accident_index) as count, 
			accident_reference
		FROM
			collisions c
		GROUP BY 
			accident_index, 
			accident_reference
			HAVING
				COUNT(accident_index) > 1;
	
	After creating new indexes (i.e. not from DfT), tables were re-imported.

2. Import guidance document tables

SQL CLEANUPS
1. The guidance documents were originally set to be used with Excel XLOOKUPS, with 1 lookup_array to match the lookup values in the collisions/casualties/vehicles, and various return arrays to replace the lookup values with. However, the exercise was done in DBeaver to speed up progress.

SQL queries can be found in the various cleanup folders in Methodology\_1. pre_tableau_cleanups\main_files

  
2. After this first large cleanup round, smaller cleanups took place:
	A. double whitespace removals in all 3 tables
	B. A value merger in vehicles > journey_purpose_of_driver, where the values 'Other' and 'Not known' were merged with 'Other/Not known'
	C. Some modifications were made to the collisions table
		1. Road categories and numbers were merged into new fields
		2. An unwanted value from second_road was removed due to being verbose
		3. original 'road' fields were dropped (in hindsight, the class fields should have been kept)

ADDITIONAL CLEANUPS/CHANGES
See:
	Methodology\_1. pre_tableau_cleanups\main_files\final_files\non_sql_change_overview
	Methodology\_1. pre_tableau_cleanups\collateral_files

TABLEAU CONNECTIONS
All files were connected through a relationship network (see Tableau Connections.png)

DATA EXPLORATION AND ANALYSIS

Not all Dimensions and Measures ended up as part of the project

[more work required]

CALCULATION AND AGGREGATION

[more work required]

DATA VISUALIZATION

[more work required]
