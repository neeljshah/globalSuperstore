/* Goal: Create a Clean Financial Table for Forecasting 
   Skills: Aggregations, ROUND, and Alias usage
*/
SELECT 
    `Order Date`,
    `Category`,
    `Sub-Category`,
    `Product Name`,
    SUM(`Sales`) as Gross_Revenue,
    SUM(`Profit`) as Net_Profit,
    -- Calculate Profit Margin %
    ROUND(SUM(`Profit`) / NULLIF(SUM(`Sales`), 0), 4) as Profit_Margin
FROM `SupplyChain_Project.superstore_data`
GROUP BY 1, 2, 3, 4
ORDER BY `Order Date` DESC;
