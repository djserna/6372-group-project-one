/* Generated Code (IMPORT) */
/* Source File: subsetCleaned.csv */
/* Source Path: /home/dserna0/Code/6372/GroupProject */
/* Code generated on: 10/6/18, 1:54 PM */

%web_drop_table(data);


FILENAME REFFILE '/home/dserna0/Code/6372/GroupProject/subsetCleaned.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=data;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=data; RUN;


%web_open_table(data);

%web_drop_table(predictionData);


FILENAME REFFILE '/home/dserna0/Code/6372/GroupProject/predictionDataSubsetCleaned.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=predictionData;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=predictionData; RUN;


%web_open_table(predictionData);

proc sgscatter data=data;
plot price_doc*full_sq;
run;  

proc corr data=data;
run;

**ignore timestamp, product_type, sub_area
**First***
id	full_sq	life_sq	floor	max_floor	
material	build_year	num_room	
kitch_sq	state	area_m	raion_popul	
green_zone_part	indust_part	children_preschool	preschool_quota	
preschool_education_centers_raion	children_school	school_quota	school_education_centers_raion	
school_education_centers_top_20_raion	hospital_beds_raion	healthcare_centers_raion	
university_top_20_raion	sport_objects_raion	additional_education_raion	culture_objects_top_25	
culture_objects_top_25_raion	shopping_centers_raion	office_raion	
thermal_power_plant_raion	incineration_raion	oil_chemistry_raion	
radiation_raion	railroad_terminal_raion	big_market_raion	
nuclear_reactor_raion	detention_facility_raion	
ID_metro	metro_min_avto	metro_km_avto	
metro_min_walk	metro_km_walk	kindergarten_km	school_km	
park_km	green_zone_km	industrial_km	
water_treatment_km	cemetery_km	incineration_km	railroad_station_walk_km	
railroad_station_walk_min	ID_railroad_station_walk	
railroad_station_avto_km	railroad_station_avto_min	
ID_railroad_station_avto	
public_transport_station_km	public_transport_station_min_walk	
water_km	water_1line	
mkad_km	ttk_km	sadovoe_km	bulvar_ring_km	kremlin_km	
big_road1_km	ID_big_road1	big_road1_1line	big_road2_km	
ID_big_road2	railroad_km	railroad_1line	zd_vokzaly_avto_km	
ID_railroad_terminal	bus_terminal_avto_km	ID_bus_terminal	
oil_chemistry_km	nuclear_reactor_km	radiation_km	power_transmission_line_km	thermal_power_plant_km	
ts_km	big_market_km	market_shop_km	fitness_km	swim_pool_km	
ice_rink_km	stadium_km	basketball_km	hospice_morgue_km	detention_facility_km	
public_healthcare_km	university_km	workplaces_km	shopping_centers_km	office_km	
additional_education_km	preschool_km	big_church_km	church_synagogue_km	mosque_km	theater_km	
museum_km	exhibition_km	catering_km	

full_all	male_f	female_f	young_all	young_male	young_female	
work_all	work_male	work_female	ekder_all	ekder_male	ekder_female	


**IGNORE**
0_6_all	0_6_male	0_6_female	7_14_all	7_14_male	
7_14_female	0_17_all	0_17_male	0_17_female	16_29_all	
16_29_male	16_29_female	0_13_all	0_13_male	
0_13_female	raion_build_count_with_material_info	
build_count_before_1920	
build_count_1921-1945	build_count_1946-1970	build_count_1971-1995	build_count_after_1995	
***Ignore***

**Include**
build_count_block	build_count_wood	build_count_frame	
build_count_brick	build_count_monolith	build_count_panel	
build_count_foam	build_count_slag	build_count_mix	
raion_build_count_with_builddate_info	

ID_metro	metro_min_avto	metro_km_avto	
metro_min_walk	metro_km_walk	kindergarten_km	school_km	
park_km	green_zone_km	industrial_km	
water_treatment_km	cemetery_km	incineration_km	railroad_station_walk_km	
railroad_station_walk_min	ID_railroad_station_walk	
railroad_station_avto_km	railroad_station_avto_min	
ID_railroad_station_avto	
public_transport_station_km	public_transport_station_min_walk	
water_km	water_1line	
mkad_km	ttk_km	sadovoe_km	bulvar_ring_km	kremlin_km	
big_road1_km	ID_big_road1	big_road1_1line	big_road2_km	
ID_big_road2	railroad_km	railroad_1line	zd_vokzaly_avto_km	
ID_railroad_terminal	bus_terminal_avto_km	ID_bus_terminal	
oil_chemistry_km	nuclear_reactor_km	radiation_km	power_transmission_line_km	thermal_power_plant_km	
ts_km	big_market_km	market_shop_km	fitness_km	swim_pool_km	
ice_rink_km	stadium_km	basketball_km	hospice_morgue_km	detention_facility_km	
public_healthcare_km	university_km	workplaces_km	shopping_centers_km	office_km	
additional_education_km	preschool_km	big_church_km	church_synagogue_km	mosque_km	theater_km	
museum_km	exhibition_km	catering_km	ecology	
*****end**


green_part_500	prom_part_500	office_count_500	office_sqm_500	
trc_count_500	trc_sqm_500	cafe_count_500	cafe_sum_500_min_price_avg	cafe_sum_500_max_price_avg	
cafe_avg_price_500	cafe_count_500_na_price	cafe_count_500_price_500	cafe_count_500_price_1000	
cafe_count_500_price_1500	cafe_count_500_price_2500	cafe_count_500_price_4000	
cafe_count_500_price_high	

big_church_count_500	church_count_500	mosque_count_500	leisure_count_500	sport_count_500	
market_count_500	

green_part_1000	prom_part_1000	office_count_1000	office_sqm_1000	trc_count_1000	
trc_sqm_1000	cafe_count_1000	cafe_sum_1000_min_price_avg	cafe_sum_1000_max_price_avg	
cafe_avg_price_1000	cafe_count_1000_na_price	cafe_count_1000_price_500	
cafe_count_1000_price_1000	cafe_count_1000_price_1500	cafe_count_1000_price_2500	
cafe_count_1000_price_4000	cafe_count_1000_price_high	

big_church_count_1000	church_count_1000	mosque_count_1000	leisure_count_1000	
sport_count_1000	market_count_1000	

green_part_1500	prom_part_1500	office_count_1500	
office_sqm_1500	trc_count_1500	trc_sqm_1500	
cafe_count_1500	cafe_sum_1500_min_price_avg	cafe_sum_1500_max_price_avg	cafe_avg_price_1500	
cafe_count_1500_na_price	cafe_count_1500_price_500	cafe_count_1500_price_1000	cafe_count_1500_price_1500	
cafe_count_1500_price_2500	cafe_count_1500_price_4000	cafe_count_1500_price_high	

big_church_count_1500	church_count_1500	mosque_count_1500	leisure_count_1500	sport_count_1500	
market_count_1500	

*NEXT**

green_part_2000	prom_part_2000	office_count_2000	office_sqm_2000	
trc_count_2000	trc_sqm_2000	cafe_count_2000	cafe_sum_2000_min_price_avg	
cafe_sum_2000_max_price_avg	cafe_avg_price_2000	cafe_count_2000_na_price	cafe_count_2000_price_500	
cafe_count_2000_price_1000	cafe_count_2000_price_1500	cafe_count_2000_price_2500	
cafe_count_2000_price_4000	cafe_count_2000_price_high	

big_church_count_2000	church_count_2000	mosque_count_2000	leisure_count_2000	
sport_count_2000	market_count_2000	green_part_3000	prom_part_3000	office_count_3000	
office_sqm_3000	trc_count_3000	trc_sqm_3000	cafe_count_3000	
cafe_sum_3000_min_price_avg	cafe_sum_3000_max_price_avg	cafe_avg_price_3000	cafe_count_3000_na_price	
cafe_count_3000_price_500	cafe_count_3000_price_1000	cafe_count_3000_price_1500	cafe_count_3000_price_2500	
cafe_count_3000_price_4000	cafe_count_3000_price_high	


***Most common**

big_church_count_3000	church_count_3000	mosque_count_3000	leisure_count_3000	
sport_count_3000	market_count_3000	green_part_5000	prom_part_5000	office_count_5000	
office_sqm_5000	trc_count_5000	trc_sqm_5000	cafe_count_5000	
cafe_sum_5000_min_price_avg	cafe_sum_5000_max_price_avg	cafe_avg_price_5000	cafe_count_5000_na_price	
cafe_count_5000_price_500	cafe_count_5000_price_1000	cafe_count_5000_price_1500	
cafe_count_5000_price_2500	cafe_count_5000_price_4000	cafe_count_5000_price_high	

big_church_count_5000	church_count_5000	mosque_count_5000	leisure_count_5000	sport_count_5000	
market_count_5000	 price_doc ;


proc glm data=data;
model price_doc = id full_sq life_sq floor max_floor build_year num_room	
kitch_sq state indust_part children_preschool preschool_quota
university_top_20_raion	
radiation_raion	build_count_block 
build_count_slag kindergarten_km green_zone_km 
mkad_km sadovoe_km kremlin_km railroad_km railroad_1line thermal_power_plant_km	
big_market_km office_km mosque_count_3000 green_part_5000
cafe_count_5000 cafe_avg_price_5000	
prom_part_2000 office_count_3000
cafe_count_3000 /cli;
run;	


/*rsq .45;*/

proc glmselect data=data                                                                                                                                                                            
               seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL);   
model price_doc = id full_sq life_sq floor max_floor build_year num_room	
kitch_sq state raion_popul indust_part children_preschool preschool_quota
hospital_beds_raion healthcare_centers_raion
university_top_20_raion	thermal_power_plant_raion 
radiation_raion	railroad_terminal_raion	
full_all young_all young_male 
work_male build_count_block build_count_frame
build_count_slag metro_min_avto 
kindergarten_km green_zone_km railroad_station_walk_km
railroad_station_walk_min railroad_station_avto_km railroad_station_avto_min
ID_railroad_station_avto water_km mkad_km sadovoe_km kremlin_km
railroad_km railroad_1line radiation_km thermal_power_plant_km	
big_market_km hospice_morgue_km 
workplaces_km shopping_centers_km office_km church_synagogue_km
exhibition_km catering_km  church_count_3000 mosque_count_3000 green_part_5000	prom_part_5000
cafe_count_5000 cafe_avg_price_5000	
big_church_count_5000 market_count_5000 
green_part_2000	prom_part_2000 
prom_part_3000 office_count_3000
office_sqm_3000	cafe_count_3000	
/ selection=stepwise;
run;


**rsq .12;

Proc glmselect data=data
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL);     
model price_doc = id full_sq life_sq floor max_floor build_year num_room	
kitch_sq state raion_popul indust_part children_preschool preschool_quota
hospital_beds_raion healthcare_centers_raion
university_top_20_raion	thermal_power_plant_raion 
radiation_raion	railroad_terminal_raion	
full_all young_all young_male 
work_male build_count_block build_count_frame
build_count_slag metro_min_avto 
kindergarten_km green_zone_km railroad_station_walk_km
railroad_station_walk_min railroad_station_avto_km railroad_station_avto_min
ID_railroad_station_avto water_km mkad_km sadovoe_km kremlin_km
railroad_km railroad_1line radiation_km thermal_power_plant_km	
big_market_km hospice_morgue_km 
workplaces_km shopping_centers_km office_km church_synagogue_km
exhibition_km catering_km  church_count_3000 mosque_count_3000 green_part_5000	prom_part_5000
cafe_count_5000 cafe_avg_price_5000	
big_church_count_5000 market_count_5000 
green_part_2000	prom_part_2000 
prom_part_3000 office_count_3000
office_sqm_3000	cafe_count_3000	
/ selection=LASSO( choose=CV stop=CV) CVdetails ;
output out=predDataLasso p=predlasso; 
run; 



/*rsq 0.455;*/
proc glmselect data=data                                                                                                                                                                                            
seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
model price_doc = id full_sq life_sq floor max_floor build_year num_room	
kitch_sq state raion_popul indust_part children_preschool preschool_quota
hospital_beds_raion healthcare_centers_raion
university_top_20_raion	thermal_power_plant_raion 
radiation_raion	railroad_terminal_raion	
full_all young_all young_male 
work_male build_count_block build_count_frame
build_count_slag metro_min_avto 
kindergarten_km green_zone_km railroad_station_walk_km
railroad_station_walk_min railroad_station_avto_km railroad_station_avto_min
ID_railroad_station_avto water_km mkad_km sadovoe_km kremlin_km
railroad_km railroad_1line radiation_km thermal_power_plant_km	
big_market_km hospice_morgue_km 
workplaces_km shopping_centers_km office_km church_synagogue_km
exhibition_km catering_km  church_count_3000 mosque_count_3000 green_part_5000	prom_part_5000
cafe_count_5000 cafe_avg_price_5000	
big_church_count_5000 market_count_5000 
green_part_2000	prom_part_2000 
prom_part_3000 office_count_3000
office_sqm_3000	cafe_count_3000	
/ selection=backward(choose=CV stop=CV) cvmethod=split(10) CVdetails;                                                                                                                
run;

/*Generate output file*/
data outputData;
set data predictionData;
run;

proc glm data = outputData plots = all;
model price_doc = id full_sq life_sq floor max_floor build_year num_room	
kitch_sq state indust_part children_preschool preschool_quota
university_top_20_raion	
radiation_raion	build_count_block 
build_count_slag kindergarten_km green_zone_km 
mkad_km sadovoe_km kremlin_km railroad_km railroad_1line thermal_power_plant_km	
big_market_km office_km mosque_count_3000 green_part_5000
cafe_count_5000 cafe_avg_price_5000	
prom_part_2000 office_count_3000
cafe_count_3000;
output out = results p = Predict;
run;

/*predict results;*/

data results;
set results;
if Predict > 0 then price_doc = Predict;
if Predict < 0 then price_doc = 7123035;
keep id price_doc;
where id > 30473;
run;

/**Create subset of timeseries;*/
data data2; 
set data;
keep id timestamp price_doc;
run;

/**convert timestamp to mon, day, year;*/

DATA new;
set data2;
year = scan(timestamp,1);
month = scan(timestamp,2);
day = scan(timestamp,3);
monthYear = cats(year,month);
RUN;

/**convert month from char to number;*/
data new3;
set New2;
Num_month = input(month, best5.);
run;

/**sort;*/
proc sort data=new3;
by monthYear;
run;

/**create average price by month;*/
data new3; set new3;
proc means; by monthYear;
var price_doc;
output out=price mean=AveragePrice;
run;


data price2;
set price;
NumMonthYear = input(monthYear, best6.);
run;

/**sort;*/
proc sort data=price2;
by NumMonthYear;
run;

/**plot data;*/
proc sgscatter data=price2;
plot AveragePrice*NumMonthYear;
run;  


/*** proc autoreg with priceData below ***/;
proc autoreg data=Price2; 
model AveragePrice = NumMonthYear / nlag =(1) dwprob;
run;



