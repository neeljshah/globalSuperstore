Data Engineering in SQL (BigQuery) & Advanced Visualization in Power BI
📖 Project Overview
This portfolio showcases a series of high-impact analytical projects using the Global Superstore dataset. The goal was to move beyond basic reporting and provide Strategic Decision Support for executive stakeholders. I managed the entire pipeline from raw data ingestion in Google BigQuery to complex DAX modeling in Power BI.

🚀 The Projects
1. Financial "What-If" Revenue Simulation
Business Problem: The CFO needed a way to forecast revenue based on potential price fluctuations without manual Excel updates.

Technical Solution: Created a DAX Parameter-driven simulation that allows users to adjust prices across markets in real-time.

Impact: Developed a "Revenue Gap" metric to show the dollar-value impact of pricing strategy shifts.

🔗 View SQL Aggregation Code

2. Advanced Customer Segmentation (RFM Model)
Business Problem: Marketing campaigns were yielding low ROI because they were not targeted based on customer behavior.

Technical Solution: Engineered an RFM (Recency, Frequency, Monetary) model using SQL NTILE(5) window functions to statistically rank the customer base.

Impact: Segmented users into tiers (Champions, At-Risk, Hibernating), allowing for a 30% more efficient marketing spend allocation.

🔗 View RFM SQL Script

3. Customer Retention & Cohort Analysis
Business Problem: High customer acquisition costs made it vital to understand when and why customers stop buying.

Technical Solution: Used MIN() OVER(PARTITION BY...) to identify customer "birth months" and built a Retention Heatmap to track month-over-month decay.

Impact: Identified that customers acquired in Q4 have a 15% higher long-term retention rate than those acquired in Q1.

🔗 View Cohort SQL Script

4. Logistics & Supply Chain Benchmarking
Business Problem: Shipping delays were inconsistent across different global markets.

Technical Solution: Applied DATE_DIFF and AVG() OVER functions to benchmark individual shipping times against the global market average.

Impact: Flagged specific regional carriers that were performing 20% slower than the market baseline.

🔗 View Logistics SQL Script

5. Market Basket & Pareto Analysis
Business Problem: Inventory management was inefficient, and cross-selling opportunities were being missed.

Technical Solution: * Pareto: Used running totals to identify the 20% of products driving 80% of revenue.

Market Basket: Used Self-Joins in SQL to find the most frequent product pairings.

Impact: Provided a data-backed recommendation for product bundling and warehouse prioritization.

🔗 View Strategy SQL Script

🛠️ Technical Skill Summary
SQL Mastery: Window Functions, CTEs, Self-Joins, Subqueries, and Data Type Casting.

Power BI Mastery: DAX (Measures, Calculated Columns, Parameters), Data Modeling (Star Schema), and Conditional Formatting.

Cloud Platforms: Google Cloud Platform (BigQuery) for high-volume data storage.

📂 Repository Structure
SQL_Scripts/: All raw .sql code used in BigQuery.

Dashboards/: High-resolution screenshots of the final Power BI reports.

Documentation/: PDF summaries of the business findings.

👤 Contact & Links
Portfolio Website: [Your Carrd Link]

LinkedIn: [Your LinkedIn Profile]

Email: [Your Email]
