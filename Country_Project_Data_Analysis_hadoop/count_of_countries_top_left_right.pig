country_data = LOAD '/user/kaushikdey67edu/country_flag_data/Country_Flag_Data.txt' USING PigStorage(',') as (name:chararray, landmass:int, zone:int, area:chararray, population:chararray, lang:int, rel:int, bar:int, stripes:int, col:int, red:int, green:int, blue:int, gold:int, white:int, black:int, orange:int, hue:chararray, circle:int, cross:int, saltire:int, quars:int, suns:int, cres:int, triangle:int, icon:int, animate:int, text:int, left:chararray, right:chararray); 
filtered_flag_data = FILTER country_data BY $28 == $29;
grouped_flag_data = GROUP filtered_flag_data All;
count_flag_data = FOREACH grouped_flag_data GENERATE group, COUNT(filtered_flag_data);
DUMP count_flag_data;