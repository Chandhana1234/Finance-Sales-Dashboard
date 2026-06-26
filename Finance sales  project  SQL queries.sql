create database finance_sales_project;
use finance_sales_project;

-- KPI 1: Total Sales (Card Visual → 118.73M)
SELECT 
    ROUND(SUM(Sales), 2) AS total_sales
FROM `finance dataset csv`;


-- KPI 2: Total Profit (Card Visual → 16.89M)
SELECT 
    ROUND(SUM(Profit), 2) AS total_profit
FROM `finance dataset csv`;


-- KPI 3: Total Gross Sales
SELECT 
    ROUND(SUM(`Gross Sales`), 2) AS total_gross_sales
FROM `finance dataset csv`;


-- KPI 4: Total Units Sold
SELECT 
    SUM(`Units Sold`) AS total_units_sold
FROM `finance dataset csv`;


-- KPI 5: Total Discounts Given
SELECT 
    ROUND(SUM(Discounts), 2) AS total_discounts
FROM `finance dataset csv`;


-- KPI 6: Sum of Sales by Country (Bar Chart Visual)
SELECT 
    Country,
    ROUND(SUM(Sales), 2) AS total_sales
FROM `finance dataset csv`
GROUP BY Country
ORDER BY total_sales DESC;


-- KPI 7: Sum of Sales by Product (Bar Chart Visual)
SELECT 
    Product,
    ROUND(SUM(Sales), 2) AS total_sales
FROM `finance dataset csv`
GROUP BY Product
ORDER BY total_sales DESC;


-- KPI 8: Sum of Profit by Year and Quarter (Line Chart Visual)
SELECT 
    Year,
    QUARTER(Date) AS Quarter,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `finance dataset csv`
GROUP BY Year, Quarter
ORDER BY Year, Quarter;


-- KPI 9: Sales and Profit by Country and Product
SELECT 
    Country, Product,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `finance dataset csv`
GROUP BY Country, Product
ORDER BY total_sales DESC;


-- KPI 10: Profit Margin % by Product
SELECT 
    Product,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS profit_margin_pct
FROM `finance dataset csv`
GROUP BY Product
ORDER BY profit_margin_pct DESC;


-- KPI 11: Sales by Year (2013 vs 2014 Comparison)
SELECT 
    Year,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(`Units Sold`)     AS total_units
FROM `finance dataset csv`
GROUP BY Year
ORDER BY Year;


-- KPI 12: Monthly Sales Trend
SELECT 
    Year,
    `Month Number`,
    `Month Name`,
    ROUND(SUM(Sales), 2)  AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM `finance dataset csv`
GROUP BY Year, `Month Number`, `Month Name`
ORDER BY Year, `Month Number`;


-- KPI 13: Sales by Segment
SELECT 
    Segment,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(`Units Sold`)     AS total_units
FROM `finance dataset csv`
GROUP BY Segment
ORDER BY total_sales DESC;


-- KPI 14: Impact of Discount Band on Sales and Profit
SELECT 
    `Discount Band`,
    COUNT(*)              AS total_transactions,
    ROUND(SUM(Sales), 2)  AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Discounts), 2) AS total_discounts
FROM `finance dataset csv`
GROUP BY `Discount Band`
ORDER BY total_sales DESC;


-- KPI 15: Running Total of Sales by Month (Window Function)
SELECT 
    Year,
    `Month Name`,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(SUM(Sales)) OVER(
        PARTITION BY Year 
        ORDER BY `Month Number`
    ), 2) AS running_total_sales
FROM `finance dataset csv`
GROUP BY Year, `Month Number`, `Month Name`
ORDER BY Year, `Month Number`;


-- KPI 16: Rank Countries by Total Sales (Window Function)
SELECT 
    Country,
    ROUND(SUM(Sales), 2) AS total_sales,
    RANK() OVER(ORDER BY SUM(Sales) DESC) AS sales_rank
FROM `finance dataset csv`
GROUP BY Country;

