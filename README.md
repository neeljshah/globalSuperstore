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
* **The Code:** [🔗 View DAX/SQL Logic](./SQL_Scripts%20/Financial_Simulation.sql)
* **The Visual:**
* <img width="963" height="245" alt="Screenshot 2026-03-06 192743" src="https://github.com/user-attachments/assets/e96f3593-17fd-45c0-8347-10a2105f9a64" />

SQL_Scripts /Financial_Simulation.sql
---

### 2. Advanced Customer Segmentation (RFM Model) 👥
* **Business Problem:** Which customers are our "Champions" and which are "At Risk"?
* **Technical Skill:** Statistical Distribution using `NTILE(5)`, CTE Nesting.
* **The Code:** [🔗 View RFM SQL Script](./SQL_Scripts%20/rfm.sql)
* **The Visual:**
    > <img width="468" height="257" alt="Screenshot 2026-03-06 192741" src="https://github.com/user-attachments/assets/55721a88-7f2d-46de-8989-d9da623d6d14" />


---

### 3. Customer Retention & Cohort Analysis 🔄
* **Business Problem:** Are we retaining customers acquired during holiday sales?
* **Technical Skill:** Window Functions (`MIN() OVER`), Date Truncation.
* **The Code:** [🔗 View Cohort SQL Script](./SQL_Scripts%20/cohort.sql)
* **The Visual:**
    > <img width="410" height="130" alt="Screenshot 2026-03-06 192733" src="https://github.com/user-attachments/assets/eb75cca0-d0f9-4099-ad33-607e975c6e7f" />


---

### 4. Logistics & Supply Chain Benchmarking 🚚
* **Business Problem:** Which regions are failing to meet the global shipping average?
* **Technical Skill:** `DATE_DIFF`, Global Benchmarking using `AVG() OVER()`.
* **The Code:** [🔗 View Logistics SQL Script](./SQL_Scripts%20/logistics.sql)
* **The Visual:**
    > <img width="338" height="232" alt="Screenshot 2026-03-06 192736" src="https://github.com/user-attachments/assets/d2438628-a205-4da5-a200-d65f2f05af35" />

---

### 5. Market Basket & Pareto Analysis (80/20 Rule) 🛒
* **Business Problem:** What products should we bundle together?
* **Technical Skill:** Self-Joins, Running Totals (Window Sums).
* **The Code:** [🔗 View Strategy SQL Script](./SQL_Scripts%20/marketBasket.sql)
* **The Visual:**
    > <img width="410" height="130" alt="Screenshot 2026-03-06 192733" src="https://github.com/user-attachments/assets/54751831-1b79-4256-8f54-6408c896ed81" />


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
