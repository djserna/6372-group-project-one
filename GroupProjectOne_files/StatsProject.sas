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

/*External Cross Validation*/
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
/ selection=backward(choose=CVEX stop=CROSSVALIDATE) cvmethod=split(10) CVdetails;                                                                                                                
run;

/*Generate residual plot*/

proc glm data=data pltos=all PLOTS(MAXPOINTS=40000);
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
run;	


/*Generate goal 1 output file*/
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

data resultsOutputGoal1;
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
data new2;
set new;
Num_month = input(month, best5.);
run;

/**sort;*/
proc sort data=new2;
by monthYear;
run;

/**create average price by month;*/
data new3; set new2;
proc means; by monthYear;
var price_doc;
output out=price(drop=_type_ _freq_) mean=AveragePrice;
run;

data price2;
set price;
NumMonthYear = input(monthYear, best6.);
NumMonth = _n_;
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
proc autoreg data=price2; 
model AveragePrice = NumMonthYear / nlag =(1) dwprob;
run;

proc print data=price2;run;

data yearForecast;
input numMonth NumMonthYear;
datalines;
48 201507
49 201508
50 201509
51 201510
52 201511
53 201512
54 201601
55 201602
56 201603
57 201604
58 201605
59 201606
60 201607
;

/*Generate goal 2 output file*/
data outputDataGoal2;
set price2 yearForecast;
run;

/*predict results;*/
proc autoreg data=outputDataGoal2; 
model AveragePrice = NumMonthYear / nlag =(1) dwprob;
output out = resultsOutputGoal2 p = Predict lcl= lower ucl= upper pm=trend;
run;

/* generate plot for goal 2 */
proc glm data=resultsOutputGoal2; 
model AveragePrice = NumMonthYear / cli;
run;






