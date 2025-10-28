🛍️ Customer Shopping Behavior Analysis

A complete Data Analytics project using Python, PostgreSQL, Metabase & Docker

📌 Project Overview

This project analyzes customer purchasing behavior using a retail dataset. The goal is to extract actionable business insights such as customer spending patterns, popular products, and the impact of discounts and subscriptions on revenue.

The analysis was performed using:

Python (Jupyter Notebook) for data cleaning and preprocessing

PostgreSQL + pgAdmin for data storage and SQL analysis

Metabase for building an interactive business dashboard

Docker to containerize and run Metabase

✅ Objectives

✔ Clean and structure the dataset for accurate analysis
✔ Load cleaned data into PostgreSQL
✔ Write SQL queries to uncover business insights
✔ Build interactive visuals to support decision-making

🧰 Tools & Technologies
Tool	Purpose
Jupyter Notebook	Data cleaning & preprocessing
Pandas, NumPy	Data transformation
PostgreSQL + pgAdmin	SQL analysis
Docker	Deploy Metabase
Metabase	Visualization & dashboard
GitHub	Project documentation & version control
📥 Dataset

Dataset used: Customer Shopping Data (Kaggle)
It contains customer purchase and behavior attributes such as:

Customer demographics

Product details

Review ratings

Purchase history

Subscription & discount usage

🧹 Data Cleaning Steps (Python)

Performed in Jupyter Notebook:

Removed duplicates and missing values

Standardized column names (lowercase + underscores)

Converted data types (numeric & date formatting)

Created a new age_group column using quantiles

Exported cleaned dataset as CSV for PostgreSQL import

🗄️ Database Setup (PostgreSQL)

Steps:

Created a database in pgAdmin

Imported cleaned CSV into a customer table

Executed SQL queries for insights such as:

Revenue by age group

Product performance rankings

Impact of subscription on revenue

Discount effectiveness

📊 Visualization (Metabase Dashboard)

Metabase was set up through Docker and connected to PostgreSQL.
Dashboard included visuals for:

Total Revenue KPIs

Gender-wise revenue comparison

Subscription vs Non-Subscription revenue

Top-rated products

Discount influence on buying behavior

Category-wise top 3 selling products

Repeat buyer subscription trends

🔍 Key Insights

Subscribers contribute higher revenue overall

Products with discounts applied see higher purchase frequency

Certain categories dominate repeat purchases

Adult and middle-aged groups showed the highest spending

📂 Project Structure
📦 Customer-Shopping-Analysis
 ┣ 📁 data
 ┃ ┗ cleaned_customer_data.csv
 ┣ 📁 notebooks
 ┃ ┗ data_cleaning.ipynb
 ┣ 📁 sql
 ┃ ┗ analysis_queries.sql
 ┣ 📁 dashboard
 ┃ ┗ metabase_screenshots/
 ┗ README.md

🚀 How to Run This Project

Clone the repository

Open the notebook and run all cells

Import cleaned data into PostgreSQL

Use Docker to start Metabase:

docker run -d -p 3000:3000 --name metabase metabase/metabase


Connect to PostgreSQL and load dashboard visuals
