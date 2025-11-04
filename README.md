<p align="center">
  <strong><h1> 🌍 Mental Health as an Economic Predictor</h1></strong>
</p>

## 🧭 Overview

This project challenges the traditional economic paradigm by exploring the relationship between National Wellbeing (Happiness Score), Innovation (Innovation score) and Economic performance (GDP) across various countries.

The central hypothesis is that ations with superior scores in overall Happiness demonstrate proportionally higher scores in Innovation, suggesting that a thriving environment of well-being, trust, and social support acts as a more powerful catalyst for creative output than economic metrics alone. Simply put: Happier nations are fundamentally more innovative nations.



## 🎯 Project Objectives

🔹 Model Wellbeing: Establish National Happiness and as key predictors of innovation.

🔹 Database Design: Build and populate a robust, relational MySQL database integrating multiple time-series data sources.

🔹 Data Consistency: Perform meticulous data cleaning and transformation (Python) to ensure accuracy and consistency across datasets.

🔹 Insight Extraction: Execute sophisticated SQL queries to extract meaningful insights about the correlations between wellbeing, innovation, and economic performance.

🔹 Visualization: Use Python to generate clear visualizations that support the core hypothesis.



## 🧩 Datasets Used

Four key datasets were used to build a comprehensive analytical structure. Each was individually cleaned and normalized before integration.

🔹 happiness_score --> Measures the level of national happiness and social support based on global surveys.

🔹 innovation_score --> Tracks national innovation performance through global indices.

🔹 gdp --> Represents each country’s total economic output (Gross Domestic Product).

🔹 gdp_per_capita --> GDP adjusted by population, providing a per-person measure of economic wealth.



## 🧱 Database Design

🧮 Entity Relationship Diagram (ERD)

![alt text](sql/erd.png)

The database, named happiness_data, contains four main tables linked by the common key: country and code.



## 🔄 Project Workflow

### 1️⃣ Data Acquisition & Cleaning

Collected the four datasets (.csv).

Used Python (Pandas) to clean and prepare them: handling missing values, standardizing country names, and normalizing column formats.



### 2️⃣ Database Creation

Designed the database schema (happiness_data).

Used the happiness_data.sql script to build the structure in MySQL.

Loaded the cleaned datasets into the corresponding tables.



### 3️⃣ SQL Queries & Analysis

Wrote and executed multi-join SQL queries to:

🔹 Join all datasets to combine and unify tables. In coding, this uses JOIN (e.g., INNER, LEFT) or UNION (to stack them).

🔹 Order by metrics to identify the leaders. This uses the ORDER BY clause (often with DESC for descending).

🔹 Filter by year. This uses the WHERE clause.

🔹 Calculate means by year and use create views. This involves GROUP BY Year for the calculation, followed by CREATE VIEW.

🔹 Calculate means, maximums, and minimums by country. This requires a separate aggregation using GROUP BY Country.

All analytical queries are contained in queries_happiness.sql.



### 4️⃣ Visualization with Python

Used Python to calculate final descriptive statistics.

Created visualizations (Scatter Plots, Correlation Heatmaps, Bar Charts) to illustrate the hypothesis that wellbeing precedes economic growth.



## 📊 Key Insights 

The analysis of rank correlation reveals that achieving top-tier Innovation is not solely a function of financial might but is highly dependent on a nation's Well-being factors. While GDP per capita holds the strongest direct link to Innovation (0.67), the connection between Happiness and Innovation (0.51) is surprisingly robust. This correlation of $0.51$ suggests that a nation's collective well-being—which incorporates elements like social support, healthy life expectancy, and trust—is nearly as important as a strong economy when it comes to predicting innovation leadership. In short: Innovation requires both: A nation needs the resources (GDP) to fund research and development, and the right environment (Happiness/Trust/Health) to foster creativity and risk-taking. The Interconnection is Key: The high positive correlations across all three metrics demonstrate that success is holistic. Top-ranked nations have figured out the synergy: they use their wealth to secure the foundational well-being (health, social trust) that, in turn, fuels their capacity for innovation. Innovation is not just driven by dollars; it's driven by the citizens who are healthy, supported, and happy enough to invent the future.



## 👥 Team

António Gouveia & Sofia Scomazzon



## 📦 Deliverables 

✅ MySQL Database Schema — sql/happiness_data.sql

✅ SQL Queries File — sql/queries_happiness.sql

✅ Python Script — python/data_cleaning_and_visuals.py

✅ ERD Diagram (Image) — sql/erd.png & model.mwb.bak

✅ Final Presentation Slides




## 📁 Repository Structure

```
SQL-miniproject/
├── data                         # Cleaned CSV files
├── sql/                         # SQL scripts
│   ├── happiness_data.sql
│   ├── queries_happiness.sql
│   └── model.mwb.bak
├── python/                      # Python script for data cleaning and visualization
│   └── data_cleaning_and_visuals.py
├── presentation/                # Final presentation slides
│   └── final_presentation.pptx
└── README.md                    # Project documentation
```
