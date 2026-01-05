# 🌍 Global Superstore: End-to-End Business Intelligence Portfolio
> **Transforming raw transactional data into executive decision-support tools using SQL (BigQuery) and Power BI.**

![Banner](https://img.shields.io/badge/Data_Warehouse-Google_BigQuery-blue?style=for-the-badge&logo=googlecloud)
![Banner](https://img.shields.io/badge/BI_Tool-Power_BI-yellow?style=for-the-badge&logo=powerbi)
![Banner](https://img.shields.io/badge/Language-SQL-orange?style=for-the-badge&logo=postgresql)

---

## 📖 Executive Summary
This project analyzes a global retail dataset to solve complex business problems including **customer churn**, **logistics bottlenecks**, and **pricing sensitivity**. By moving beyond simple descriptive statistics, I implemented advanced statistical modeling (RFM) and real-time forecasting.

---

## 🚀 Key Projects & Technical Breakdown

### 1. Financial "What-If" Revenue Simulation 📈
* **Business Problem:** How will a ±20% price change impact our global margins?
* **Technical Skill:** DAX Numerical Parameters, Dynamic Measures.
* **The Code:** [🔗 View DAX/SQL Logic](./SQL_Scripts/Financial_Simulation.sql)
* **The Visual:**
    > *[Insert Screenshot of your Slider and Revenue Graph Here]*
SQL_Scripts /Financial_Simulation.sql
---

### 2. Advanced Customer Segmentation (RFM Model) 👥
* **Business Problem:** Which customers are our "Champions" and which are "At Risk"?
* **Technical Skill:** Statistical Distribution using `NTILE(5)`, CTE Nesting.
* **The Code:** [🔗 View RFM SQL Script](./SQL_Scripts/RFM_Segmentation.sql)
* **The Visual:**
    > 

---

### 3. Customer Retention & Cohort Analysis 🔄
* **Business Problem:** Are we retaining customers acquired during holiday sales?
* **Technical Skill:** Window Functions (`MIN() OVER`), Date Truncation.
* **The Code:** [🔗 View Cohort SQL Script](./SQL_Scripts/Cohort_Analysis.sql)
* **The Visual:**
    > 

---

### 4. Logistics & Supply Chain Benchmarking 🚚
* **Business Problem:** Which regions are failing to meet the global shipping average?
* **Technical Skill:** `DATE_DIFF`, Global Benchmarking using `AVG() OVER()`.
* **The Code:** [🔗 View Logistics SQL Script](./SQL_Scripts/Logistics_Performance.sql)
* **The Visual:**
    > *[Insert Screenshot of your Logistics Map/Bar Chart Here]*

---

### 5. Market Basket & Pareto Analysis (80/20 Rule) 🛒
* **Business Problem:** What products should we bundle together?
* **Technical Skill:** Self-Joins, Running Totals (Window Sums).
* **The Code:** [🔗 View Strategy SQL Script](./SQL_Scripts/Strategy_Analysis.sql)
* **The Visual:**
    > 

---

## 🛠️ Technical Mastery Checklist
- [x] **Advanced SQL:** CTEs, Window Functions, Self-Joins, and NTILE Distribution.
- [x] **Data Modeling:** Star Schema design and 1-to-many relationship management.
- [x] **DAX:** What-If Parameters, Time Intelligence, and Conditional Formatting.
- [x] **Business Acumen:** Defining KPIs (YoY Growth, Retention Rate, RFM).

---

## 📂 Project Structure
```text
├── SQL_Scripts/
│   ├── Financial_Simulation.sql
│   ├── RFM_Segmentation.sql
│   ├── Cohort_Analysis.sql
│   ├── Logistics_Performance.sql
│   └── Strategy_Analysis.sql
├── Dashboards/
│   └── (Screenshots of Power BI Reports)
└── README.md
