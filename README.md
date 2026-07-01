# Superstore Sales Analysis — SQL + Power BI

A beginner-friendly data analyst project: a retail sales dataset, analyzed with SQL and visualized with an interactive dashboard.

🔗 **Live dashboard:** enable GitHub Pages (see below) to view `docs/Superstore_Dashboard.html` directly in your browser, or just open the file locally.

## Repo Structure

```
superstore-sales-analysis/
├── README.md
├── .gitignore
├── data/
│   └── Superstore.csv              <- source dataset (9,800 rows)
├── sql/
│   ├── 01_create_table.sql         <- table structure
│   └── 02_analysis_queries.sql     <- 18 SQL queries answering business questions
├── powerbi/
│   ├── DAX_Measures.md             <- Power BI measures
│   └── PowerBI_Guide.md            <- step-by-step dashboard build guide
└── docs/
    └── Superstore_Dashboard.html   <- interactive HTML dashboard
```

> Note: the SQLite database (`.db`) and Excel data file (`.xlsx`) aren't committed since they're just `data/Superstore.csv` loaded into a different format — regenerate them locally if needed (see below).

## About the Data
One table: order-level retail sales data — Order ID, dates, customer info, region, product category, and sales amount. 2015–2018, 9,800 rows.

## SQL — What You'll Practice
Basic, fresher-friendly SQL only: `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`).

**To run it locally:**
```bash
sqlite3 superstore.db
.mode csv
.import data/Superstore.csv Superstore
.read sql/01_create_table.sql
.read sql/02_analysis_queries.sql
```
Or import `data/Superstore.csv` into any SQL tool (MySQL Workbench, pgAdmin, DB Browser for SQLite) and run the `.sql` files there.

## Power BI — What You'll Build
A single-page dashboard: KPI cards, Sales by Region, Sales by Category, Sales trend by year, Top 10 Customers table. Follow `powerbi/PowerBI_Guide.md` and use `data/Superstore.csv` as the source (import it into Power BI directly — no separate Excel file needed).

## Interactive Dashboard
`docs/Superstore_Dashboard.html` is a self-contained, filterable dashboard (Year/Region/Segment/Category filters, KPI cards, charts, top customers table) — built with HTML + Chart.js. Just open it in any browser, no installation needed.

**To host it live on GitHub Pages:**
1. Repo → Settings → Pages
2. Source: `main` branch, `/docs` folder
3. Save — your dashboard will be live at `https://<your-username>.github.io/superstore-sales-analysis/Superstore_Dashboard.html`

## Key Findings
- **Total Sales:** $2,261,536.55 across **4,922 orders** and **793 customers**
- **Average order value:** ~$459
- **Best year:** 2018
- **Top region:** West ($710,220)
- **Top category:** Technology ($827,456)
- **Top sub-category:** Phones ($327,782)
- **Most common shipping method:** Standard Class

## How to Talk About This Project (for interviews)
"I took a raw retail sales dataset, structured it into a SQL table, wrote queries to answer business questions like top-performing regions and products, and built an interactive dashboard to visualize the results for stakeholders."

## Next Steps (to level this up later)
- Learn joins by splitting this into multiple related tables (star schema)
- Add Quantity, Discount, and Profit columns if available, to analyze margins
- Publish the Power BI report to Power BI Service# Superstore Sales Analysis — SQL + Power BI

A beginner-friendly data analyst project: a retail sales dataset, analyzed with SQL and visualized with an interactive dashboard.

🔗 **Live dashboard:** enable GitHub Pages (see below) to view `docs/Superstore_Dashboard.html` directly in your browser, or just open the file locally.

## Repo Structure

```
superstore-sales-analysis/
├── README.md
├── .gitignore
├── data/
│   └── Superstore.csv              <- source dataset (9,800 rows)
├── sql/
│   ├── 01_create_table.sql         <- table structure
│   └── 02_analysis_queries.sql     <- 18 SQL queries answering business questions
├── powerbi/
│   ├── DAX_Measures.md             <- Power BI measures
│   └── PowerBI_Guide.md            <- step-by-step dashboard build guide
└── docs/
    └── Superstore_Dashboard.html   <- interactive HTML dashboard
```

> Note: the SQLite database (`.db`) and Excel data file (`.xlsx`) aren't committed since they're just `data/Superstore.csv` loaded into a different format — regenerate them locally if needed (see below).

## About the Data
One table: order-level retail sales data — Order ID, dates, customer info, region, product category, and sales amount. 2015–2018, 9,800 rows.

## SQL — What You'll Practice
Basic, fresher-friendly SQL only: `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`).

**To run it locally:**
```bash
sqlite3 superstore.db
.mode csv
.import data/Superstore.csv Superstore
.read sql/01_create_table.sql
.read sql/02_analysis_queries.sql
```
Or import `data/Superstore.csv` into any SQL tool (MySQL Workbench, pgAdmin, DB Browser for SQLite) and run the `.sql` files there.

## Power BI — What You'll Build
A single-page dashboard: KPI cards, Sales by Region, Sales by Category, Sales trend by year, Top 10 Customers table. Follow `powerbi/PowerBI_Guide.md` and use `data/Superstore.csv` as the source (import it into Power BI directly — no separate Excel file needed).

## Interactive Dashboard
`docs/Superstore_Dashboard.html` is a self-contained, filterable dashboard (Year/Region/Segment/Category filters, KPI cards, charts, top customers table) — built with HTML + Chart.js. Just open it in any browser, no installation needed.

**To host it live on GitHub Pages:**
1. Repo → Settings → Pages
2. Source: `main` branch, `/docs` folder
3. Save — your dashboard will be live at `https://<your-username>.github.io/superstore-sales-analysis/Superstore_Dashboard.html`

## Key Findings
- **Total Sales:** $2,261,536.55 across **4,922 orders** and **793 customers**
- **Average order value:** ~$459
- **Best year:** 2018
- **Top region:** West ($710,220)
- **Top category:** Technology ($827,456)
- **Top sub-category:** Phones ($327,782)
- **Most common shipping method:** Standard Class

## How to Talk About This Project (for interviews)
"I took a raw retail sales dataset, structured it into a SQL table, wrote queries to answer business questions like top-performing regions and products, and built an interactive dashboard to visualize the results for stakeholders."

## Next Steps (to level this up later)
- Learn joins by splitting this into multiple related tables (star schema)
- Add Quantity, Discount, and Profit columns if available, to analyze margins
- Publish the Power BI report to Power BI Service
