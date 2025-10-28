🛍️ Customer Shopping Behavior Analysis

A complete Data Analytics project using Python, PostgreSQL, Metabase & Docker

📌 Project Overview

This project analyzes customer purchasing behavior using a retail dataset. The goal is to extract actionable business insights such as customer spending patterns, popular products, and the impact of discounts and subscriptions on revenue.

The analysis was performed using:

Python (Jupyter Notebook) for data cleaning and preprocessing

PostgreSQL + pgAdmin for data storage and SQL analysis

Metabase for building an interactive business dashboard

Docker to containerize and run Metabase


Use Docker to start Metabase:

docker run -d -p 3000:3000 --name metabase metabase/metabase


Connect to PostgreSQL and load dashboard visuals
