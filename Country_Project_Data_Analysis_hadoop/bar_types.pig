bar_type_data = LOAD '/user/kaushikdey67edu/country_flag_data/Country_Flag_Data.txt' USING PigStorage(',') as (name:chararray, landmass:int, zone:int, area:chararray, population:chararray, lang:int, rel:int, bar:int, stripes:int, col:int, red:int, green:int, blue:int, gold:int, white:int, black:int, orange:int, hue:chararray, circle:int, cross:int, saltire:int, quars:int, suns:int, cres:int, triangle:int, icon:int, animate:int, text:int, left:chararray, right:chararray);
foreach_data = FOREACH bar_type_data GENERATE name,$7+$8;
grouped_data = GROUP foreach_data All;
bar_data = FOREACH grouped_data {        
ord = ORDER foreach_data BY $1 DESC;    
top = LIMIT ord 5;
GENERATE FLATTEN(top);
};
DUMP bar_data;