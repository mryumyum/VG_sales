SELECT year, ROUND(SUM(Global_Sales), 2) AS total_sales_year
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY year
ORDER BY year DESC;

SELECT genre, ROUND(SUM(Global_Sales), 2) AS total_sales_genre
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY genre
ORDER BY total_sales_genre DESC;

SELECT Publisher, ROUND(SUM(Global_Sales), 2) AS total_sales_publisher
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY publisher
ORDER BY total_sales_publisher DESC;

SELECT year, COUNT(*) as greatest_year_sales
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY year
LIMIT 1;

SELECT year, COUNT(*) smallest_year_sales
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY year
ORDER BY smallest_year_sales;

SELECT genre, SUM(Global_sales) AS Global_sales_by_genre
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY Genre
ORDER BY Global_Sales_by_genre DESC;

SELECT platform, COUNT(platform) games_released_on_each_platform
FROM `singular-antler-352816.Video_Game_Sales.vg_sales`
GROUP BY platform
ORDER BY games_released_on_each_platform DESC;
