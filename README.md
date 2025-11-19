# DuckDB Analytics Project – Salaries Dataset

This project is part of your SQL/DuckDB learning module and also functions as a **portfolio-ready project** that you can showcase to teachers, classmates, or future employers.

It demonstrates your ability to:

* Work with local data using **DuckDB**
* Ingest data from CSV files
* Structure a professional project
* Write and execute SQL queries (filtering, sorting, grouping)
* Use JOINs and Window Functions
* Understand basic data engineering workflows

---

## 📁 Project Structure

```
duckdb_analytics_orhan_mlops25/
│
├── data/
│   └── salaries.csv              # Kaggle dataset (clean & valid)
│
├── sql/
│   ├── ingest_data.sql           # Script to load CSV → DuckDB table
│   └── analysis_queries.sql      # Optional: your collection of SQL queries
│
├── salaries.duckdb               # Local DuckDB database file
│
└── README.md                     # This documentation
```

---

## 🚀 How to Run the Project

### 1️⃣ Navigate to the project directory

```bash
cd duckdb_analytics_orhan_mlops25
```

### 2️⃣ Run the ingestion script

```bash
duckdb salaries.duckdb < sql/ingest_data.sql
```

### 3️⃣ Start DuckDB CLI

```bash
duckdb salaries.duckdb
```

### 4️⃣ Verify that the table loaded correctly

```sql
SELECT * FROM salaries LIMIT 5;
```

---

## 🧠 SQL Exercises Covered in This Project

### ✔️ Basic Queries

* `SELECT *`, `LIMIT`
* `COUNT`, `MIN`, `MAX`, `AVG`
* Filtering with `WHERE`
* Sorting with `ORDER BY`

### ✔️ Grouping & Aggregation

* `GROUP BY`
* `HAVING`

### ✔️ JOINs

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN

### ✔️ Window Functions

* `RANK()`
* `AVG() OVER()`
* Rolling averages (window frame clauses)

---

## 📊 Dataset Information

* **Source:** Kaggle – Data Science Salaries
* **Size:** ~6k rows
* **Columns:** job_title, salary_in_usd, experience_level, employee_residence, remote_ratio, company_location, etc.

This dataset is widely used for practicing real-world analytics problems.

---

## 🧩 Example Queries

### Top 10 Highest-Paying Roles

```sql
SELECT job_title, salary_in_usd
FROM salaries
ORDER BY salary_in_usd DESC
LIMIT 10;
```

### Average Salary by Experience Level

```sql
SELECT experience_level, AVG(salary_in_usd) AS avg_salary
FROM salaries
GROUP BY experience_level
ORDER BY avg_salary DESC;
```

### Ranking Salaries Within Each Job Title

```sql
SELECT
    job_title,
    salary_in_usd,
    RANK() OVER (PARTITION BY job_title ORDER BY salary_in_usd DESC) AS rank_in_title
FROM salaries;
```

---

## 📦 Goal of This Project

This project is designed to:

* Help you learn SQL and DuckDB step-by-step
* Provide a clean, professional example for your portfolio
* Demonstrate your ability to work with local data engineering workflows
* Prepare you for future roles in MLOps, Data Analytics, or Data Engineering

---

## 🏁 Optional Extensions

To expand this project, you can add:

* A Streamlit dashboard
* A Jupyter Notebook with visualizations
* Automated ingestion pipeline steps
* Additional datasets

---

## 👤 Author

**Orhan Ulusoy**
