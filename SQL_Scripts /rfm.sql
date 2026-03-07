/* PROJECT 7: Advanced RFM Customer Segmentation
Techniques: CTEs, Window Function Ranking (NTILE), Date Arithmetic
Goal: Segment 50,000+ customers into actionable marketing tiers.
*/

WITH customer_agg AS (
    -- Step 1: Aggregate raw data to the customer level
    SELECT 
        `Customer ID`,
        MAX(`Order Date`) as last_order_date,
        COUNT(DISTINCT `Order ID`) as frequency,
        SUM(Sales) as total_monetary
    FROM `SupplyChain_Project.superstore_data`
    GROUP BY 1
),
rfm_scores AS (
    -- Step 2: Use NTILE to create 5-point scales (1 is low, 5 is high)
    SELECT 
        *,
        -- Recency: How long ago was their last order? (Higher score for more recent)
        NTILE(5) OVER (ORDER BY last_order_date ASC) as r_score,
        -- Frequency: How often do they buy?
        NTILE(5) OVER (ORDER BY frequency ASC) as f_score,
        -- Monetary: How much do they spend?
        NTILE(5) OVER (ORDER BY total_monetary ASC) as m_score
    FROM customer_agg
),
segmentation AS (
    -- Step 3: Define business logic for segments based on RFM totals
    SELECT 
        *,
        (r_score + f_score + m_score) as rfm_total_score,
        CASE 
            WHEN (r_score + f_score + m_score) >= 13 THEN 'Champions'
            WHEN (r_score + f_score + m_score) >= 10 THEN 'Loyal Customers'
            WHEN r_score <= 2 AND (f_score + m_score) >= 8 THEN 'At Risk'
            WHEN r_score <= 1 THEN 'Hibernating / Lost'
            ELSE 'Promising / New'
        END as customer_segment
FROM rfm_scores
)
-- Step 4: Final Output with detailed statistics
SELECT 
    customer_segment,
    COUNT(*) as customer_count,
    ROUND(AVG(total_monetary), 2) as avg_spend,
    ROUND(AVG(frequency), 2) as avg_frequency,
    -- Calculate what % of total revenue this segment brings in
    ROUND(SUM(total_monetary) / SUM(SUM(total_monetary)) OVER() * 100, 2) as pct_of_total_revenue
FROM segmentation
GROUP BY 1
ORDER BY avg_spend DESC;
