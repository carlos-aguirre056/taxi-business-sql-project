CREATE SCHEMA Driver_Database;
GO

CREATE TABLE Driver_Database.driver_data(
id_driver INT IDENTITY(1,1) PRIMARY KEY,
age SMALLINT NOT NULL,
cellphone VARCHAR(10) UNIQUE NOT NULL,
address VARCHAR(100) NOT NULL,
housing_status VARCHAR(50) NOT NULL,
housing_description VARCHAR(100) NOT NULL,
emergency_contact_number VARCHAR(10) UNIQUE NOT NULL,
emergency_contact_relationship VARCHAR(30) NOT NULL,
work_history VARCHAR(MAX) NOT NULL,
previous_employer_contact VARCHAR(10) UNIQUE,
current_car VARCHAR(7) NOT NULL,
license_expiration DATE NOT NULL,
driver_badge_expiration DATE NOT NULL,

CONSTRAINT fk_id_driver_DDdd FOREIGN KEY(id_driver) REFERENCES car_control.drivers(id_driver),
CONSTRAINT fk_current_car_DDdd FOREIGN KEY(current_car) REFERENCES car_control.cars(license_plate)
);
GO

CREATE TABLE Driver_Database.driver_vehicle_history(
history_id INT IDENTITY(1,1) PRIMARY KEY,
id_driver INT NOT NULL,
id_car INT NOT NULL,
start_date DATE,
end_date DATE, 

CONSTRAINT fk_id_driver_DDdvh FOREIGN KEY(id_driver) REFERENCES car_control.drivers(id_driver),
CONSTRAINT fk_id_car_DDdvh FOREIGN KEY(id_car) REFERENCES car_control.cars(id_car)
);
GO
