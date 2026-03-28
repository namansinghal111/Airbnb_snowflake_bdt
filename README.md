# 🏠 Airbnb Data Engineering Project (AWS + Snowflake + dbt)

## 📌 Overview

This project demonstrates an end-to-end **modern data engineering pipeline** built using **AWS**, **Snowflake**, and **dbt (Data Build Tool)**. It focuses on transforming raw Airbnb data into clean, analytics-ready datasets using a layered architecture (Bronze → Silver → Gold).

---

## 🧰 Tech Stack

* ☁️ **AWS** – Data storage and orchestration (e.g., S3)
* ❄️ **Snowflake** – Cloud data warehouse for scalable analytics
* 🔧 **dbt (Data Build Tool)** – Data transformation and modeling
* 🐍 Python – Environment and dependency management
* 🔁 Git & GitHub – Version control

---

## 🏗️ Architecture

The project follows a **Medallion Architecture**:

### 🥉 Bronze Layer

* Raw ingestion from source systems
* Minimal transformations
* Tables: `bronze_bookings`, `bronze_hosts`, `bronze_listings`

### 🥈 Silver Layer

* Data cleaning and standardization
* Handling nulls, data types, and basic transformations
* Tables: `silver_bookings`, `silver_hosts`, `silver_listings`

### 🥇 Gold Layer

* Business-level aggregations and analytics-ready models
* Fact and dimension tables
* Tables: `fact`, `obt`

---

## 🔄 Data Flow

1. Raw Airbnb data is stored in AWS (S3)
2. Data is loaded into Snowflake staging tables
3. dbt transforms data through Bronze → Silver → Gold layers
4. Final models are ready for BI tools and analytics

---

## ⚙️ Key Features

* Modular dbt models with clear layer separation
* Reusable macros for transformations
* Source definitions and testing
* Snapshotting for historical tracking
* Scalable cloud-based architecture

---

## 📂 Project Structure

```
airbnb_snowflake_dbt_project/
│
├── models/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   └── sources/
│
├── macros/
├── snapshots/
├── tests/
├── dbt_project.yml
├── profiles.yml
```

---

## 🚀 How to Run

```bash
dbt debug        # Check connection
dbt compile      # Compile models
dbt run          # Run transformations
dbt test         # Run tests
```

---

## 🎯 Outcome

This project showcases how to:

* Build scalable data pipelines
* Transform raw data into insights
* Apply best practices in modern data engineering

---

## 📌 Future Improvements

* Add orchestration using AWS Airflow
* Integrate BI tools (Power BI / Tableau)
* Implement CI/CD for dbt pipelines
