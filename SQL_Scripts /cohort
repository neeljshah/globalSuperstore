/* Project 6: Customer Retention & Cohort Analysis */
WITH customer_birth AS (
    SELECT 
        `Customer ID`,
        `Order Date`,
        `Sales`,
        -- Find the very first time this specific customer appeared
        MIN(`Order Date`) OVER(PARTITION BY `Customer ID`) as first_purchase_date
    FROM `SupplyChain_Project.superstore_data`
),
cohort_logic AS (
    SELECT 
        *,
        -- Extract the Month/Year of the first purchase
        DATE_TRUNC(first_purchase_date, MONTH) as cohort_month,
        -- Calculate how many months have passed since their first purchase
        DATE_DIFF(`Order Date`, first_purchase_date, MONTH) as month_number
    FROM customer_birth
)
SELECT 
    cohort_month,
    month_number,
    COUNT(DISTINCT `Customer ID`) as active_customers,
    SUM(`Sales`) as revenue
FROM cohort_logic
GROUP BY 1, 2
ORDER BY 1, 2;
