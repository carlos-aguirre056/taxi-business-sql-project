# Taxi Business Relational Database (3NF) — SQL Portfolio Project
*A realistic SQL Server project simulating the operational structure, driver payments,
vehicle management, and daily processes of a real taxi business.*

---

## 🎯 Project Objectives
- Develop SQL Server skills using a realistic business scenario.
- Design a fully normalized (3NF) relational database.
- Create schemas, tables, constraints, and transactional data inserts.
- Write queries that mirror daily taxi-fleet operations (driver tracking, emissions testing, absence detection).
- Build a scalable database structure that could be adapted to a real taxi company.

---

## 🚕 Business Context Overview

This project models the core elements required to operate a taxi fleet:

- 34 taxis tracked daily during November 2025.
- 3 schemas with 6 relational tables
- Operational logs, driver profiles, vehicle data, concession information.
- Realistic SQL queries used in day-to-day fleet management.
- Clean folder structure with creation scripts, inserts, and query examples.

👉 **All data is FICTIONAL, but the scenarios are inspired by real operational processes of a taxi business.**

---

## 🚦 Features of the Project

- Complete SQL schema built from scratch following 3NF principles.
- Transactional inserts with TRY/CATCH and integrity validation.
- 1,000+ records simulating one full month of taxi fleet operations.
- Operational queries, such as:
    - Retrieving vehicle and driver info for emissions testing
    - Tracking driver absences and late payments
- Practice for data analysis (JOINs, WHERE, GROUP BY, HAVING, error handling).
- Real-world constraints (NULL behavior, late payments, mismatched delivery dates, operational gaps).

---

## ▶️ **How to Run This Project**

1. Open SQL Server / SSMS on your machine.
2. Navigate to the folder: "00_Database_Schemas_and_Data"

Run the scripts in the following order:

⚠️ Run each script in order to avoid foreign-key conflicts.

### 📁 1. car_control
```
01_00_car_control_schema.sql                    → Creates the schema and tables
01_01_car_control_insert_data.sql               → Inserts initial (parent-tables) data
01_02_car_account_control_insert_full_month.sql → Inserts the full Nov 2025 dataset
```
### 📁 2. registry_of_taxis
```
02_00_registry_of_taxis_schema.sql              → Creates the schema and tables
02_01_registry_of_taxis_insert_initial_data.sql → Inserts fictional concession and taxi data
```
### 📁 3. driver_database
```
03_00_driver_database_schema.sql               → Creates the schema and table
03_01_driver_database_insert_initial_data.sql  → Inserts driver administrative data
```
### 📁 4. Realistic queries

After the database is fully created and populated, use the folder: "04_Business_Information_Queries"
to run realistic operational queries:
```
04_01_Vehicle_Emission_Test_Query.sql
04_02_driver_absence_report.sql
```

⭐ **The database will now reflect a complete simulated taxi-business environment ready for analysis and querying.**

---

## 🛠️ Tech Stack

- **SQL Server 2022**  
- **T-SQL**  
- **SQL Server Management Studio (SSMS)**  
- **Relational Modeling (3NF)**  
- **Primary & Foreign Keys**  
- **Constraints & Data Integrity**  
- **Transactional Inserts (BEGIN TRAN / TRY/CATCH)**  
- **Operational SQL Queries (JOIN, GROUP BY, HAVING)**  

---

## 📚 Database Schema Overview

This project uses 3 main schemas, reorganizing real taxi-business notebooks into clean relational tables.

### 🔗 Summary of Relationships (Relational Model Overview)
```
drivers ↔ driver_data (1–1)

drivers ↔ car_account_control (1–many)

cars ↔ driver_data (1–1)

cars ↔ car_account_control (1–many)

concessionaires ↔ taxis (1–many)

cars ↔ taxis (1–1)
```

---

### 1️⃣ **Car control**
Drivers, vehicles, and daily operational logs.

#### Tables:

##### **cars** (Parent table)
Basic information for each vehicle:
```
id_car (PK, IDENTITY)
license_plate
model
year
```
##### **drivers** (Parent table)
Master registry of active drivers.
```
id_driver (PK, IDENTITY)
full_name
phone_number
```
##### **car_account_control**
1,000+ daily logs for November 2025.
```
id_control (PK, IDENTITY)
id_car (FK → car_control.cars(id_car))
id_driver (FK → car_control.drivers(id_driver))
operation_date
fare_amount
delivery_date
partial_payment
outstanding_balance
daily_expenses
expense_description
```

---

### 2️⃣ Registry of Taxis and Concessionaires
Administrative and legal requirements.

#### Tables:

##### **concessionaires** (Parent table)
```
id_concession_holder (PK,IDENTITY)
full_name
street
street_number
neighborhood
postal_code
town
municipality
```

##### **taxis**
```
id_car (PK, FK → car_control.cars(id_car))
license_plate
year
vin_number
id_concession_holder (FK → Registry_of_Taxis_and_Concessionaires.concessionaires(id_concession_holder))
authorization_number
insurance_policy_number
insurance_company
```

---
  
### 3️⃣ **Driver Database**
Full administrative profile for each driver.

#### Table:

##### **driver_data**
```
id_driver (PK, FK → car_control.drivers(id_driver))
id_car (FK → car_control.cars(id_car))
age
cellphone
address
housing_status
housing_description
emergency_contact_number
emergency_contact_relationship
work_history
previous_employer_contact
license_expiration
driver_badge_expiration
```

---
