/* Goal: Find the most common product pairings */
SELECT 
    a.`Sub-Category` as product_a, 
    b.`Sub-Category` as product_b, 
    COUNT(*) as times_bought_together
FROM `SupplyChain_Project.superstore_data` a
JOIN `SupplyChain_Project.superstore_data` b 
    ON a.`Order ID` = b.`Order ID` -- Same order
    AND a.`Sub-Category` < b.`Sub-Category` -- Avoid pairing a product with itself
GROUP BY 1, 2
ORDER BY times_bought_together DESC
LIMIT 10;
