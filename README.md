# 🛍️ **Retail Data Cleaning & SQL Analysis**

## 📌 **Project Overview**

This project focuses on preparing, cleaning, and analyzing retail transaction data to extract meaningful business insights.

It combines **SQL for database setup and exploratory analysis** with  **Python for data preprocessing** , making it a well-rounded end-to-end data analytics workflow.

 **Key Objectives** :

* Set up a structured retail database using MySQL
* Clean and transform raw data for consistency
* Perform exploratory data analysis (EDA) using SQL
* Lay the foundation for dashboarding and advanced analytics

---

## 🧰 **Tools & Technologies**

* **SQL (MySQL)** — Database creation, querying, aggregation
* **Python (Pandas, Jupyter Notebook)** — Data cleaning & transformation
* **Power BI / Tableau**  — Visualization and dashboarding
* **Git & GitHub** — Version control and project hosting

---

## 📂 **Repository Structure**

| File                    | Description                                                                                                                      |
| ----------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| `RetailDatabase.sql`  | SQL script to create and populate the retail database, including exploratory queries for KPIs.                                   |
| `Data Cleaning.ipynb` | Jupyter Notebook containing step-by-step data cleaning operations (null handling, data type conversions, date formatting, etc.). |

---

## 🛠️ **Project Workflow**

### 1️⃣ **Database Setup**

Run the SQL script to create the database and load data:

<pre class="overflow-visible!" data-start="1645" data-end="1682"><div class="contain-inline-size rounded-2xl relative bg-token-sidebar-surface-primary"><div class="sticky top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-sql"><span><span>SOURCE RetailDatabase.sql;
</span></span></code></div></div></pre>

This will:

* Create the `retail_db` database
* Load the `clean retail data` table
* Provide queries for  **Total Revenue** ,  **Top Products** ,  **Monthly Trends** ,  **Country Sales** , and **Average Order Value**

---

### 2️⃣ **Data Cleaning**

Launch the Jupyter Notebook:

<pre class="overflow-visible!" data-start="1957" data-end="2006"><div class="contain-inline-size rounded-2xl relative bg-token-sidebar-surface-primary"><div class="sticky top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>jupyter notebook Data\ Cleaning.ipynb
</span></span></code></div></div></pre>

Key cleaning steps include:

* Inspecting and converting column data types
* Handling missing or inconsistent records
* Formatting dates for time-series analysis
* Running basic data quality checks

---

### 3️⃣ **Exploratory SQL Analysis**

Sample queries include:

* **Total Revenue**

<pre class="overflow-visible!" data-start="2300" data-end="2386"><div class="contain-inline-size rounded-2xl relative bg-token-sidebar-surface-primary"><div class="sticky top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-sql"><span><span>SELECT</span><span></span><span>SUM</span><span>(Quantity </span><span>*</span><span> UnitPrice) </span><span>AS</span><span> Total_Revenue
</span><span>FROM</span><span> `clean retail data`;
</span></span></code></div></div></pre>

* **Top 10 Products by Sales**

<pre class="overflow-visible!" data-start="2419" data-end="2564"><div class="contain-inline-size rounded-2xl relative bg-token-sidebar-surface-primary"><div class="sticky top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-sql"><span><span>SELECT</span><span> Description, </span><span>SUM</span><span>(Quantity </span><span>*</span><span> UnitPrice) </span><span>AS</span><span> Revenue
</span><span>FROM</span><span> `clean retail data`
</span><span>GROUP</span><span></span><span>BY</span><span> Description
</span><span>ORDER</span><span></span><span>BY</span><span> Revenue </span><span>DESC</span><span>
LIMIT </span><span>10</span><span>;
</span></span></code></div></div></pre>

* **Monthly Sales TrendN**

<pre class="overflow-visible!" data-start="2592" data-end="2753"><div class="contain-inline-size rounded-2xl relative bg-token-sidebar-surface-primary"><div class="sticky top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-sql"><span><span>SELECT</span><span> DATE_FORMAT(InvoiceDate, </span><span>'%Y-%m'</span><span>) </span><span>AS</span><span></span><span>Month</span><span>,
       </span><span>SUM</span><span>(Quantity </span><span>*</span><span> UnitPrice) </span><span>AS</span><span> Revenue
</span><span>FROM</span><span> `clean retail data`
</span><span>GROUP</span><span></span><span>BY</span><span></span><span>Month</span><span>
</span><span>ORDER</span><span></span><span>BY</span><span></span><span>Month</span><span>;
</span></span></code></div></div></pre>

---

## 📊 **Notable Results**

The SQL analysis revealed several key insights:

* 💰 **Total Sales Revenue:** ₦2,524,131.67
* 🏆 **Top Products:** A small number of products contribute disproportionately to total revenue — perfect candidates for targeted marketing.
* 📈 **Monthly Trends:** Clear revenue fluctuations over time, useful for **seasonality analysis** and  **forecasting** .
* 🌍 **Country-Level Sales:** Certain countries consistently generate higher revenue, indicating strong regional market opportunities.
* 🧾 **Average Order Value:** Computed by grouping sales per invoice, providing a benchmark for upselling and bundling strategies.

These insights provide a solid foundation for  **strategic decision-making** ,  **dashboard development** , and  **predictive modeling** .

---

## 📈 **Next Steps**

* Develop interactive dashboards in **Power BI** or **Tableau**
* Add customer segmentation and churn metrics
* Implement predictive models for demand forecasting and revenue growth

---

## 👤 **Author**

**Samuel Sholademi**

📍 Data Analyst | SQL • Power BI • Python

🔗 [GitHub Profile](https://github.com/SamuelS2003)

📅 *Last updated: October 2025*
