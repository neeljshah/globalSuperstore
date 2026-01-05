/* PROJECT 3: Global Sales Performance & Year-Over-Year Growth
Skills: DATE_TRUNC, Window Functions (LAG), Arithmetic CTEs
*/

WITH monthly_metrics AS (
    SELECT 
        DATE_TRUNC(`Order Date`, MONTH) as order_month,
        `Market`,
        SUM(`Sales`) as current_monthly_sales,
        COUNT(DISTINCT `Order ID`) as total_orders
    FROM `SupplyChain_Project.superstore_data`
    GROUP BY 1, 2
),
growth_calc AS (
    SELECT 
        *,
        -- Get sales from the same Market, but from 12 months ago
        LAG(current_monthly_sales, 12) OVER (PARTITION BY `Market` ORDER BY order_month) as sales_last_year
    FROM monthly_metrics
)
SELECT 
    order_month,
    `Market`,
    ROUND(current_monthly_sales, 2) as sales,
    ROUND(sales_last_year, 2) as prev_year_sales,
    -- Calculate Growth Percentage
    ROUND(
        ((current_monthly_sales - sales_last_year) / NULLIF(sales_last_year, 0)) * 100, 
        2
    ) as yoy_growth_pct
FROM growth_calc
WHERE sales_last_year IS NOT NULL -- Filters out the first year where no comparison exists
ORDER BY order_month DESC, `Market`;
