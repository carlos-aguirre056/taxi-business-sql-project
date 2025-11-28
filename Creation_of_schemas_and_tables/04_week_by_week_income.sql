CREATE SCHEMA Week_by_Week_Income;
GO

CREATE TABLE Week_by_Week_Income.weekly_consolidated(
id_day INT IDENTITY(1,1) PRIMARY KEY,
operation_date DATE NOT NULL,
total_received INT NOT NULL,
total_spent INT NOT NULL,
daily_total INT NOT NULL,
weekly_total INT NOT NULL
);
GO
