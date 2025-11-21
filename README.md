# Taxi Business Relational Database (3NF) — SQL Portfolio Project
*A realistic SQL Server project simulating the operations, payments, vehicles, expenses, and usual queries inside a taxi business*

## English

## 🎯 Project Objectives
- Practice SQL Server skills in a realistic business environment.
- Demonstrate my ability to design 3NF relational databases and write efficient queries.
- Build a database model that I can later adapt to the real taxi business operations.

## 🚕 **Business Context Overview**

This is a simulated data-analysis project for a taxi business.  
It includes:

- A fictional dataset
- Basic and intermediate SQL queries (SELECT, JOINs, aggregations, CASE)
- Scenarios inspired by typical operational processes
- Step-by-step notes to practice real-world data analysis thinking

👉 **All data shown here is fictional; however, the scenarios are loosely inspired by real operational processes of a taxi business.**

**Why this project matters**
This project replicates the type of relational structure required to run a real taxi fleet, including payments, drivers, vehicles, maintenance, and operational accounting. Additionally, it sets the base to actually set the entire database operation in SQL Server.

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

------------------------------------------

# Base de Datos Relacional para Negocio de Taxis (3NF) — Proyecto de Portafolio SQL
*Proyecto de portafolio en SQL Server que modela de forma realista las operaciones, pagos, vehículos, gastos y consultas habituales de un negocio de taxis.*

## Español

## 🎯 Objetivos del Proyecto
- Practicar habilidades de SQL Server en un entorno de negocio realista.  
- Demostrar mi capacidad para diseñar bases de datos relacionales en 3NF y escribir consultas eficientes.  
- Construir un modelo de base de datos que pueda adaptarse posteriormente a las operaciones reales de un negocio de taxis.  

## 🚖 Contexto del Negocio

Este es un proyecto simulado de análisis de datos para un negocio de taxis.  
Incluye:

- Un conjunto de datos ficticio  
- Consultas SQL básicas e intermedias (SELECT, JOINs, agreggations, CASE)  
- Escenarios inspirados en procesos operativos reales y cotidianos en un negocio de taxi  
- Notas paso a paso para practicar el pensamiento analítico en situaciones reales  

👉 **Todos los datos mostrados son ficticios. Sin embargo, los escenarios están inspirados de manera general en procesos reales de un negocio de taxis.**

**¿Por que este proyecto es útil?**
Este proyecto replica el tipo de estructura relacional necesaria en una base de datos para administrar una flota de taxis, incluyendo pagos, conductores, vehículos, mantenimiento y contabilidad operativa. Además, establece la base para implementar toda la operación de la base de datos en SQL Server.

## 🚦 **CARACTERISTICAS DEL PROYECTO**

Base de datos SQL simulada, diseñada para reflejar de forma realista los procesos operativos de un negocio de taxis.

- Base de datos completa: 6 módulos operativos con más de 10 tablas relacionales, modeladas según el flujo real de un servicio de taxis.

- Esquema SQL construido desde cero, siguiendo buenas prácticas de normalización y modelado relacional.

- Scripts incluidos: CREATE TABLE, INSERT y consultas operativas listas para ejecutarse.

- Consultas de uso diario, como:
        - Pagos atrasados por conductor: deteccion rapida de adeudos.
        - Gastos por vehículo: desglose y seguimiento por unidad.
        - Ingresos diarios, semanales y mensuales: consolidación por periodos.
        - Información clave para trámites gubernamentales  mensuales, anuales y ambientales.
        - Historial mecánico por unidad: costos totales por vehiculo o rango de fechas.

- Ejercicios para practicar análisis de datos
        - JOINS
        - Filtros por fecha
        - Window functions (Rankings, totales, tendencias)
        - Agregaciones por día/semana/mes

- Conjunto de datos ficticio: suficientemente realista para análisis, sin exponer información personal.

- Documentación paso a paso que explica cómo se construyó la base de datos y cómo funcionan las consultas.

## 📚 DESCRIPCIÓN GENERAL DEL ESQUEMA DE LA BASE DE DATOS

Este proyecto contiene 6 módulos principales, cada uno modelado a partir de las libretas operativas fisicas y procesos reales de un negocio de taxis.

Para mantener el sistema limpio, escalable y en Tercera Forma Normal (3NF), la información fue reorganizada en tablas relacionales con llaves primarias (PK), llaves foráneas (FK) y una lógica que evita repetición de datos.

Cada subsección describe:

- Qué representa cada tabla

- Qué función cumple en el negocio real

- Sus columnas clave

- Por qué su estructura es importante en un modelo relacional

### 🔗 Resumen de Relaciones (Visión General del Modelo Relacional)
```
- cars ↔ car_account_control  
  Un automóvil puede muchos registros financieros diarios; cada registro pertenece a un solo automóvil.

- drivers ↔ car_account_control  
  Un conductor puede aparecer en múltiples registros diarios.

- cars ↔ daily_control  
  Un automóvil genera muchas entradas de ingresos diarios.

- drivers ↔ daily_control  
  Un conductor puede estar en muchos registros diarios.

- cars ↔ car_expenses  
  Un automóvil tiene un historial completo de gastos, mantenimiento y reparaciones.

- concessionaires ↔ taxis  
  Un concesionario puede tener varios taxis registrados.

- cars ↔ taxis  
  Cada registro en taxis corresponde exactamente a un automóvil.

- drivers ↔ driver_data  
  Cada conductor tiene un solo perfil administrativo.

- drivers ↔ driver_vehicle_history  
  Un conductor puede estar asignado a distintos autos a lo largo del tiempo.

- cars ↔ driver_vehicle_history  
  Un automóvil puede tener múltiples conductores durante su vida operativa.
```

### 1️⃣ Control de Cuenta por Vehículo
Registro financiero diario para cada unidad, incluyendo el pago de cuenta que entrega el conductor, saldos pendientes, abonos parciales y cualquier gasto relacionado.
*Basado en el cuaderno físico donde cada página representaba a un solo automóvil.*

#### Tablas:

##### **cars**
Información básica de cada vehículo:
```
id_car (PK)
license_plate
model
year
```

##### **drivers**
Registro completo de conductores activos e históricos.
```
id_driver (PK)
full_name
phone_number
*Otros campos administrativos*
```

##### **car_account_control**
Bitácora diaria de movimientos financieros por unidad.
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

### 2️⃣ Control Diario
Permite visualizar el desempeño global del día:
ingresos totales, qué conductor entregó qué cantidad y los gastos generales.
*Basado en la libreta física donde cada día se listaban todos los autos con sus respectivos conductores.*

#### Tablas:

##### daily_control
```
id_record (PK)
date
id_car (FK → cars.id_car)
id_driver (FK → drivers.id_driver)
daily_amount
notes
```

##### daily_expenses
```
id_expense (PK)
date
concept
amount
id_car (FK → cars.id_car)
```

### 4️⃣ Ingresos Semanales
Hoja consolidada por semana que muestra los ingresos, egresos y el balance total de cada día de la semana.
Útil para el control financiero y la conciliación semanal del dinero recibido y gastado.
*Basado en los cuadernos semanales donde se registraban ingresos diarios, ingresos semanales, egresos y totales.*

#### Tablas:

##### weekly_consolidated
```
id_day (PK)
date
total_received
total_spent
daily_total
weekly_total
```

### 5️⃣ Registro General de Taxis y Concesionarios
Información administrativa y legal utilizada para renovaciones, trámites anuales y requerimientos oficiales.
*Basado en los compendios físicos que almacenan la documentación de vehículos y concesionarios.*

#### Tablas:
##### taxis
```
id_car (PK)
license_plate
year
vin_number
id_concession_holder (FK → concessionaires.id_concession_holder)
authorization_number
insurance_policy_number
insurance_company
```

#### concessionaires
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

### 6️⃣ Base de Datos de Conductores
Perfil administrativo completo de cada conductor, incluyendo documentos legales, datos de contacto de emergencia, contexto de vivienda e historial laboral.
*Basado en la carpeta digital que se mantiene para cada conductor.*

#### Tablas:

##### **driver_data**
```
id_driver (PK y FK → drivers.id_driver)
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
Para llevar un registro exacto de cada vehículo que ha utilizado un conductor.
```
history_id (PK)
id_driver (FK → drivers.id_driver)
id_car (FK → cars.id_car)
start_date
end_date
```
