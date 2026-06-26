💰 Finance Sales Analytics Dashboard

 An end-to-end Finance Sales Analytics project analyzing global sales performance, profit trends, product revenues, and segment-wise contributions
 across 2013–2014 — built using Power BI, DAX, and MySQL.


📌 Project Overview :

This project dives deep into a company's financial sales data across **5 countries**, **6 products**, and **5 business segments** to uncover revenue patterns, 
profit drivers, and discount impacts. The interactive Power BI dashboard enables stakeholders to slice and filter data by **Country, Product, Year, Quarter, and Month** for real-time decision-making.


🎯 Objectives :

- Track total Sales, Profit, and Gross Sales at a global level
- Analyze sales and profit performance by Country and Product
- Understand quarterly and monthly profit trends over 2013–2014
- Measure the impact of discount bands on revenue and profitability
- Identify top-performing segments and country-product combinations
- Build SQL queries mapping to every KPI and visual in the dashboard


📊 Dataset Description :

**File:** `Finance_dataset.xlsx`
**Records:** 700 rows × 16 columns
**Period:** 2013 – 2014

Columns :

| Column | Description |
|--------|-------------|
| `Segment` | Business segment (Government, Small Business, Enterprise, Midmarket, Channel Partners) |
| `Country` | Country of sale (USA, Canada, France, Germany, Mexico) |
| `Product` | Product name (Paseo, VTT, Velo, Amarilla, Montana, Carretera) |
| `Discount Band` | Discount level applied (Low, Medium, High, None) |
| `Units Sold` | Number of units sold |
| `Manufacturing Price` | Cost to manufacture per unit |
| `Sale Price` | Selling price per unit |
| `Gross Sales` | Total sales before discounts |
| `Discounts` | Total discount amount |
| `Sales` | Net sales after discounts |
| `COGS` | Cost of Goods Sold |
| `Profit` | Net profit (Sales - COGS) |
| `Date` | Transaction date |
| `Month Number` | Numeric month (1–12) |
| `Month Name` | Month name (January–December) |
| `Year` | Year of transaction (2013 / 2014) |


🛠️ Tools & Technologies :

| Tool | Usage |
|------|-------|
| **Power BI** | Interactive dashboard & data visualization |
| **DAX** | Calculated measures (Sum of Sales, Sum of Profit, KPI cards) |
| **Power Query** | Data transformation & cleaning |
| **MySQL** | 20 KPI queries covering all dashboard visuals |
| **Microsoft Excel** | Source dataset |


📈 Dashboard Visuals & KPIs :

<img width="1403" height="795" alt="Finance_sales_screenshot" src="https://github.com/user-attachments/assets/3c7c2d29-417a-4d35-92df-c180e650752c" />




🔢 KPI Cards : 

| Metric | Value |
|--------|-------|
| **Total Sales** | 118.73M |
| **Total Profit** | 16.89M |
| **Total Units Sold** | 1,125,806 |

📊 Charts & Visuals :

- **Sum of Sales by Country** — Bar Chart
- **Sum of Sales by Product** — Horizontal Bar Chart
- **Sum of Profit by Year and Quarter** — Line Chart
- **Country Slicer** — Canada, France, Germany, Mexico, USA
- **Product Slicer** — Amarilla, Carretera, Montana, Paseo, Velo, VTT
- **Year/Quarter/Month Slicer** — 2013 & 2014


🔍 Key Insights :

🌍 Sales by Country :- 

| Country | Total Sales |
|---------|------------|
| 🇺🇸 United States of America | 25.03M |
| 🇨🇦 Canada | 24.89M |
| 🇫🇷 France | 24.35M |
| 🇩🇪 Germany | 23.51M |
| 🇲🇽 Mexico | 20.95M |

📦 Sales by Product :-

| Product | Total Sales |
|---------|------------|
| Paseo | 33.01M ⭐ Highest |
| VTT | 20.51M |
| Velo | 18.25M |
| Amarilla | 17.75M |
| Montana | 15.39M |
| Carretera | 13.82M |

🏢 Sales by Segment :- 

| Segment | Total Sales |
|---------|------------|
| Government | 52.50M ⭐ Highest |
| Small Business | 42.43M |
| Enterprise | 19.61M |
| Midmarket | 2.38M |
| Channel Partners | 1.80M |

📅 Profit by Year :-

| Year | Total Profit |
|------|-------------|
| 2013 | 3.88M |
| 2014 | 13.02M ⭐ 3x Growth |

💡 Business Insights :

  📈 **Profit grew 3x** from 2013 to 2014 — strong business momentum
  🏆 **Paseo** is the top-selling product with 33M in sales
  🌍 **USA and Canada** lead in revenue, nearly tied at ~25M each
  🏢 **Government segment** dominates with 52.5M — 44% of total sales
  💸 High discount bands significantly reduce profit margins
  📊 **Q4 2014** shows the highest quarterly profit at 4.4M


🗄️ SQL Queries Overview :

20 SQL queries written covering all dashboard KPIs and visuals:

| # | Query | Type |
|---|-------|------|
| 1 | Total Sales | Aggregate |
| 2 | Total Profit | Aggregate |
| 3 | Total Gross Sales | Aggregate |
| 4 | Total Units Sold | Aggregate |
| 5 | Total Discounts | Aggregate |
| 6 | Sales by Country | GROUP BY |
| 7 | Sales by Product | GROUP BY |
| 8 | Profit by Year & Quarter | GROUP BY |
| 9 | Sales & Profit by Country + Product | GROUP BY |
| 10 | Profit Margin % by Product | Calculated KPI |
| 11 | 2013 vs 2014 Comparison | GROUP BY Year |
| 12 | Monthly Sales Trend | GROUP BY Month |
| 13 | Sales by Segment | GROUP BY |
| 14 | Discount Band Impact | GROUP BY |
| 15 | Running Total of Sales | Window Function |
| 16 | Rank Countries by Sales | RANK() |
| 17 | Rank Products by Profit | DENSE_RANK() |
| 18 | Top 3 Country + Product Combos | LIMIT |
| 19 | QoQ Profit Growth % | CTE + LAG() |
| 20 | COGS vs Sales vs Profit by Segment | CTE |


📂 Project Structure

Finance-Sales-Analytics/
│
├── Finance_dataset.xlsx              # Raw dataset (700 records)
├── power_bi_assignment.pbix          # Power BI dashboard file
├── finance_sales_queries.sql         # 20 MySQL KPI queries
└── README.md                         # Project documentation

🚀 How to Run

1. Clone or download this repository
2. Open `Finance_dataset.xlsx` to explore the raw data
3. Open `power_bi_assignment.pbix` in [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
4. Refresh the data source if prompted
5. Use **Country, Product, and Year slicers** to explore insights interactively
6. Import `Finance_dataset.xlsx` into MySQL and run `finance_sales_queries.sql`


👩‍💻 Author
A. Chandhana
B.Tech Computer Science (AI & ML) | Data Analyst Intern @ AI Variant
📧 [LinkedIn] : https://www.linkedin.com/in/arungolam-chandhana-71007a2bb/ | 🐙 [GitHub] : https://github.com/Chandhana1234


📜 License
This project is for educational and portfolio purposes only.
