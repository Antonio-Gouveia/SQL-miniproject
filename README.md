🌍 Mental Health as an Economic Predictor: SQL & Python Analysis

🧭 Overview

This project challenges the traditional economic paradigm by exploring the relationship between National Wellbeing (Happiness Score) and Economic Resilience/Performance (GDP, Innovation) across various countries.

The central hypothesis is that high national wellbeing acts as economic infrastructure, driving higher productivity and innovation, rather than being merely a result of economic success. We built a relational SQL database from four complementary datasets, performed advanced querying to extract correlations, and used Python for robust data cleaning and visualization.

🎯 Project Objectives

Model Wellbeing: Establish National Happiness and as key predictors of innovation.

Database Design: Build and populate a robust, relational MySQL database integrating multiple time-series data sources.

Data Consistency: Perform meticulous data cleaning and transformation (Python) to ensure accuracy and consistency across datasets.

Insight Extraction: Execute sophisticated SQL queries to extract meaningful insights about the correlations between wellbeing, innovation, and economic performance.

Visualization: Use Python to generate clear visualizations that support the core hypothesis.

🧩 Datasets Used

Four key datasets were used to build a comprehensive analytical structure. Each was individually cleaned and normalized before integration.

Dataset

Description

Source

Study Focus

happiness_score

Measures the level of national happiness and social support based on global surveys.

World Happiness Report

Primary Predictive Variable (Wellbeing)

innovation_score

Tracks national innovation performance through global indices.

External Sources

Proxy for Innovation & Productivity

gdp

Represents each country’s total economic output (Gross Domestic Product).

External Sources

Primary Economic Indicator

gdp_per_capita

GDP adjusted by population, providing a per-person measure of economic wealth.

External Sources

Indicator of Individual Productivity

🧱 Database Design

🧮 Entity Relationship Diagram (ERD)

![alt text](erd.png)

The database, named happiness_data, contains four main tables linked by the common key: country.

Table

Primary Key

Foreign Keys

Description

happiness_score

country

—

Contains all social and wellbeing metrics.

innovation_score

country

—

Contains global innovation scores and R&D data.

gdp

country

—

Total GDP data per country over time.

gdp_per_capita

country

—

GDP per capita for individual economic comparison.

⚙️ Technologies Used

Category

Tools

Database

MySQL

Data Processing & Visualization

Python (pandas, matplotlib, seaborn)

Documentation & Version Control

Markdown, Git & GitHub

🔄 Project Workflow

1️⃣ Data Acquisition & Cleaning

Collected the four datasets (.csv).

Used Python (Pandas) to clean and prepare them: handling missing values, standardizing country names, and normalizing column formats.

2️⃣ Database Creation

Designed the database schema (happiness_data).

Used the create_happiness_database.sql script to build the structure in MySQL.

Loaded the cleaned datasets into the corresponding tables.

3️⃣ SQL Queries & Analysis

Wrote and executed multi-join SQL queries to:

Explore correlations between social support and GDP growth.

Identify countries that maintain high wellbeing despite moderate GDP (outliers).

Compare the predictive strength of Happiness Score vs. GDP on Innovation Score.

All analytical queries are contained in queries_happiness_data.sql.

4️⃣ Visualization with Python

Used Python to calculate final descriptive statistics (e.g., Pearson correlation coefficients).

Created visualizations (Scatter Plots, Correlation Heatmaps, Bar Charts) to illustrate the hypothesis that wellbeing precedes economic growth.

📊 Key Insights (Example Summaries)

(Please fill in these points with your final, confirmed findings from your analysis.)

Wellbeing Correlates with Innovation: Countries ranking high in Social Support and Freedom tend to show a disproportionately high Innovation Score, even when controlling for baseline GDP.

Resilience Factor: Regions with strong Trust (Corruption Perception) showed greater economic resilience (less volatility) during global shocks compared to regions reliant solely on high GDP.

The Predictive Lead: Statistical modeling suggests that a 1-point increase in the Happiness Score can predict a noticeable rise in the GDP per Capita growth rate in the subsequent 2-3 years.


👥 Team

Member

Role

Responsibilities

[Nome do Autor 1]

Database Design & SQL Analysis

Criação da base de dados, queries SQL complexas e garantia de integridade dos dados.

[Nome do Autor 2]

Python Visualization & Cleaning

Pré-processamento de dados, análise estatística e geração de gráficos.

📦 Deliverables (Entregáveis)

✅ MySQL Database Schema — sql/create_happiness_database.sql

✅ SQL Queries File — sql/queries_happiness_data.sql

✅ Python Script — python/data_cleaning_and_visuals.py

✅ ERD Diagram (Image) — sql/erd.png

✅ Final Presentation Slides — presentation/final_presentation.pptx (ou link externo)

📁 Repository Structure

SQL-miniproject/
│
├── data/                         
│   ├── (raw and cleaned CSV files)
│
├── sql/
│   ├── create_happiness_database.sql   # Database schema creation 
│   ├── queries_happiness_data.sql      # Analytical SQL queries
│   ├── erd.png                         # Diagrama de Relacionamento de Entidades
│
├── python/
│   ├── data_cleaning_and_visuals.py    # Data cleaning & visualization script 
│
├── presentation/
│   ├── final_presentation.pptx         # Slides de apresentação final
│
└── README.md                           # Project documentation
