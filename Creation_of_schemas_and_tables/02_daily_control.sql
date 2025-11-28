CREATE SCHEMA daily_control;
GO

CREATE TABLE daily_control.daily_income(
id_record INT IDENTITY(1,1) PRIMARY KEY,
record_date DATE NOT NULL,
id_car INT NOT NULL,
id_driver INT NOT NULL,
daily_amount SMALLINT,
notes VARCHAR(100),

CONSTRAINT fk_car_Di FOREIGN KEY (id_car) REFERENCES car_control.cars(id_car),
CONSTRAINT fk_driver_Di FOREIGN KEY (id_driver) REFERENCES car_control.drivers(id_driver)
);

GO

CREATE TABLE daily_control.daily_expenses(
id_expense INT IDENTITY(1,1) PRIMARY KEY,
expense_date DATE NOT NULL,
concept VARCHAR(50) NOT NULL,
amount SMALLINT NOT NULL,
id_car INT NOT NULL,

CONSTRAINT fk_car_De FOREIGN KEY (id_car) REFERENCES car_control.cars(id_car)
);

GO

