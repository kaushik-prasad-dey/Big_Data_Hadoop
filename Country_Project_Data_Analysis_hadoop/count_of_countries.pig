country_data = LOAD '/user/kaushikdey67edu/country_flag_data/Country_Flag_Data.txt' USING PigStorage(',') as (name:chararray, landmass:int, zone:int, area:chararray, population:chararray, lang:int, rel:int, bar:int, stripes:int, col:int, red:int, green:int, blue:int, gold:int, white:int, black:int, orange:int, hue:chararray, circle:int, cross:int, saltire:int, quars:int, suns:int, cres:int, triangle:int, icon:int, animate:int, text:int, left:chararray, right:chararray); 
filtered_icon_data = FILTER country_data BY icon == 1;    
grouped_icon_data = GROUP filtered_icon_data BY icon; 
count_icon_data = FOREACH grouped_icon_data GENERATE group, COUNT(filtered_icon_data);
DUMP count_icon_data;