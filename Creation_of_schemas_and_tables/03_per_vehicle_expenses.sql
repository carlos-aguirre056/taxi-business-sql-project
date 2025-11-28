CREATE SCHEMA Per_Vehicule_Expenses;
GO

CREATE TABLE Per_Vehicule_Expenses.Car_expenses(
id_expense INT IDENTITY(1,1) PRIMARY KEY,
id_car INT,
expense_date DATE NOT NULL,
description VARCHAR(50) NOT NULL,
cost SMALLINT NOT NULL,

CONSTRAINT fk_car_Ce FOREIGN KEY(id_car) REFERENCES car_control.cars(id_car)
);

GO
