CREATE SCHEMA car_control;
GO

CREATE TABLE car_control.cars(
id_car INT IDENTITY(1,1) PRIMARY KEY,
license_plate VARCHAR(7) UNIQUE NOT NULL,
model VARCHAR(50) NOT NULL,
year SMALLINT CHECK(year BETWEEN 2008 AND 2030) NOT NULL
);

CREATE TABLE car_control.drivers(
id_driver INT PRIMARY KEY IDENTITY(1,1),
full_name VARCHAR(100) NOT NULL,
phone_number VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE car_control.car_account_control(
id_control INT PRIMARY KEY IDENTITY(1,1),
id_car INT NOT NULL,
id_driver INT NOT NULL,
operation_date DATE NOT NULL,
fare_amount SMALLINT,
delivery_date DATE,
partial_payment SMALLINT,
outstanding_balance SMALLINT,
daily_expenses SMALLINT,

CONSTRAINT fk_car FOREIGN KEY (id_car) REFERENCES car_control.cars(id_car),
CONSTRAINT fk_driver FOREIGN KEY (id_driver) REFERENCES car_control.drivers(id_driver)
);
