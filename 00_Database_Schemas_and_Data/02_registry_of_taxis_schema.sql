CREATE SCHEMA Registry_of_Taxis_and_Concessionaires;
GO

CREATE TABLE Registry_of_Taxis_and_Concessionaires.concessionaires(
id_concession_holder INT IDENTITY(1,1) PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
street VARCHAR(100) NOT NULL,
street_number SMALLINT NOT NULL,
neighborhood VARCHAR(100) NOT NULL,
postal_code SMALLINT NOT NULL,
town VARCHAR(50) NOT NULL,
municipality VARCHAR(50) NOT NULL
);

GO

CREATE TABLE Registry_of_Taxis_and_Concessionaires.taxis (
id_car INT IDENTITY(1,1) PRIMARY KEY,
license_plate VARCHAR(7) UNIQUE NOT NULL,
year_model SMALLINT CHECK(year_model BETWEEN 2008 AND 2025) NOT NULL,
vin_number VARCHAR(25) UNIQUE NOT NULL,
id_concession_holder INT NOT NULL,
authorization_number INT UNIQUE,
insurance_policy_number INT UNIQUE NOT NULL,
insurance_company VARCHAR(20) NOT NULL,

CONSTRAINT concession_holder_RoTaC FOREIGN KEY(id_concession_holder) REFERENCES Registry_of_Taxis_and_Concessionaires.concessionaires(id_concession_holder)
);

GO
