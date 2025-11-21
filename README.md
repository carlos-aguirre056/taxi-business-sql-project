# Taxi-Business-SQL-Project
**Simulated Data-Analysis Case Study**

## English

## 🚕 **OVERVIEW**

This is a simulated data-analysis project for a taxi business.  
It includes:

- A fictional dataset
- Basic and intermediate SQL queries (SELECT, JOINs, aggregations, CASE)
- Scenarios inspired by typical operational processes
- Step-by-step notes to practice real-world data analysis thinking

👉 **All data shown here is fictional; however, the scenarios are loosely inspired by real operational processes of a taxi business.**

The goal of this repository is to document my SQL learning journey by applying concepts to a structured, business-like scenario that resembles real operations without using real data.


## 🚦 **FEATURES OF THE PROJECT**

Complete simulated database with 6 operational modules (over 10 relational tables) modeled after real taxi-business processes.

- Full SQL schema from scratch, following relational modeling best practices.

- SQL scripts included: CREATE TABLE, inserts, and operational queries.

- Daily-use operational queries, such as:

    - Late payments by driver
    - Expenses per vehicle
    - Daily, weekly, and monthly income
    - Key information to key governmental monthly/annual procedures
    - Mechanical history per unit and total cost per car or time period

- Data-analysis exercises to practice:

    - JOIN operations
    - Date filtering
    - Window functions (ranking, cumulative totals, trends)
    - Aggregations by day/week/month

- Fully fictional dataset, realistic enough to analyze without exposing personal information.

- Step-by-step documentation explaining how the database is built and how the queries work.


## 📚 **DATABASE SCHEMA OVERVIEW**

This project contains 6 main database modules, each modeled after real operational notebooks and processes used in a taxi business.

To keep the system clean, scalable, and in Third Normal Form (3NF), the information has been reorganized into relational tables with clear primary keys, foreign keys, and logic that avoids duplication.

Each subsection describes:

- What the table represents

- What real-world function it covers

- Key columns

- Why its structure matters in a relational model

### 🔗 Summary of Relationships (Relational Model Overview)
```
- cars ↔ car_account_control  
  One car has many daily financial logs; each log belongs to one car.

- drivers ↔ car_account_control  
  One driver can appear in many daily logs.

- cars ↔ daily_control  
  One car has many daily income entries.

- drivers ↔ daily_control  
  One driver may appear in many daily records.

- cars ↔ car_expenses  
  One car has a full maintenance and repairs history.

- concessionaires ↔ taxis  
  One concession holder can own multiple taxis.

- cars ↔ taxis  
  Each taxi record corresponds to exactly one car.

- drivers ↔ driver_data  
  One driver has exactly one administrative profile.

- drivers ↔ driver_vehicle_history  
  One driver can have multiple assigned cars over time.

- cars ↔ driver_vehicle_history  
  One car can have multiple drivers across its operational life.
```

### 1️⃣ **Car-by-Car Account Control**
Daily financial tracking for each vehicle, including the daily fare payment each driver delivers, any pending balances, partial payments, or related expenses.  
*Inspired by the physical ledger where each page represented a single car.*

#### Tables:

##### **cars**
Basic information for each vehicle:
```
id_car (PK)
license_plate
model
year
```
##### **drivers**
Master registry of active and historical drivers.
```
id_driver (PK)
full_name
phone_number
*Other administrative fields*
```

##### **car_account_control**
Daily movement log per unit for each day.
```
id_control (PK)
id_car (FK → cars.id_car)
id_driver (FK → drivers.id_driver)
operation_date
fare_amount
delivery_date
partial_payment
outstanding_balance
daily_expenses
```

### 2️⃣ **Daily Control**
This helps visualize the global performance of the day:
total revenue, who delivered what, and general expenses.
*Inspired by the physical notebook where each day listed all cars with their respective drivers.*

#### Tables:

##### **daily_control**
```
id_record (PK)
date
id_car (FK → cars.id_car)
id_driver (FK → drivers.id_driver)
daily_amount
notes
```

##### **daily_expenses**
```
id_expense (PK)
date
concept
amount
id_car (FK → cars.id_car)
```

### 3️⃣ **Per-vehicle Expenses**
Historical record of all maintenance and repair expenses per vehicle.  
*Inspired by the physical expense ledger dedicated to each car.*

#### Table:

##### **car_expenses**
```
id_expense (PK)
id_car (FK → cars.id_car)
date
description
cost
```

### 4️⃣ **Week-by-Week Income**
Weekly consolidated sheet of incomes, outcomes and total balance of each day of the week.
Useful for  financial control and weekly reconciliation of money received and spent.
*Inspired by the weekly notebooks recording dayly and weekly incomes, outcomes and totals.*

#### Tables:

##### **weekly_consolidated**
```
id_day (PK)
date
total_received
total_spent
daily_total
weekly_total
```

### 5️⃣ General Registry of Taxis & Concessionaires
Administrative and legal information used for renewals, annual procedures, and official requirements.  
*Inspired by the physical compendiums that store vehicle and concessionaire documentation.*

#### Tables:

##### **taxis**
```
id_car (PK)
license_plate
year
vin_number
id_concession_holder (FK → concessionaires.id_concesionario)
authorization_number
insurance_policy_number
insurance_company
```
  
##### **concessionaires**
```
id_concession_holder (PK)
full_name
street
street_number
neighborhood
postal_code
town
municipality
```

### 6️⃣ **Driver Database**
Full administrative profile for each driver, including legal documents, emergency details, housing context, and labor history.  
*Inspired by the digital folder maintained for each driver.*

#### Table:

##### **driver_data**
```
id_driver (PK and FK → drivers.id_driver)
age
cellphone
address
housing_status
housing_description
emergency_contact_number
emergency_contact_relationship
work_history
previous_employer_contact
current_car (FK → cars.id_car)
license_expiration
driver_badge_expiration
```

#### **driver_vehicle_history**
To keep an exact record of every car a driver has used.

```
history_id (PK)
id_driver (FK → drivers.id_driver)
id_car (FK → cars.id_car)
start_date
end_date
```
---

## Español

🚕 **RESUMEN**

Este es un proyecto simulado de análisis de datos para un negocio de taxis.  
Incluye:

- Un conjunto de datos ficticio
- Consultas SQL básicas e intermedias
- Un escenario inspirado en procesos operativos comunes
- Notas paso a paso para practicar análisis de datos reales

👉 **Todos los datos mostrados son ficticios. Sin embargo, los escenarios están inspirados de manera general en procesos operativos reales de un negocio de taxis.**

El objetivo del repositorio es documentar mi aprendizaje en SQL aplicando conceptos a un caso estructurado que se parece a operaciones reales, pero sin usar datos reales.

🚦 **CARACTERISTICAS DEL PROYECTO**

- Base de datos simulada completa con 6 tablas basadas en procesos reales de un negocio de taxis.

- Esquema SQL diseñado desde cero, siguiendo buenas prácticas de modelado relacional.

- Scripts SQL incluidos: CREATE TABLE, inserts y consultas operativas.

- Consultas típicas de uso diario, como:

    - Cuentas atrasadas por chofer

    - Gastos por carro

    - Ingresos diarios, semanales y mensuales

    - Recuperarion de informaciÓn clave para trámites gubernamentales mensuales y anuales

    - Historial mecánico por unidad y costos totales por carro o período de tiempo

- Ejercicios de análisis de datos para practicar:

    - JOINs

    - Filtrado por fechas

    - Ventanas analíticas (ranking, acumulados, tendencias)

    - Agregaciones por día/semana/mes

- Dataset completamente ficticio, suficientemente realista para poder analizar procesos sin revelar información personal real.

- Documentación paso a paso explicando cómo se construye la base y cómo usar las consultas.
