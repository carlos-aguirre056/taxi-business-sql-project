--Insert of data to table "cars"
BEGIN TRANSACTION;

BEGIN TRY
	INSERT INTO car_control.cars
	(license_plate,model, year)
	VALUES
        ('A152FVB', 'Tsuru', 2014),
        ('A158FVD', 'Tsuru', 2016),
        ('A161FVB', 'Tsuru', 2013),
        ('A325FUX', 'Tsuru', 2011),
        ('A329FUX', 'Tsuru', 2010),
        ('A334FUX', 'Tsuru', 2015),
        ('A340FUX', 'Tsuru', 2012),
        ('A341FUX', 'Tsuru', 2010),
        ('A342FUX', 'Tsuru', 2009),
        ('A343FUX', 'Tsuru', 2014),
        ('A344FUX', 'Tsuru', 2015),
        ('A345FUX', 'Tsuru', 2013),
        ('A346FUX', 'Tsuru', 2010),
        ('A347FUX', 'Tsuru', 2011),
        ('A348FUX', 'Tsuru', 2016),
        ('A349FUX', 'Tsuru', 2015),
        ('A350FUX', 'Tsuru', 2014),
        ('A351FUX', 'Tsuru', 2017),
        ('A352FUX', 'Tsuru', 2010),
        ('A353FUX', 'Tsuru', 2012),
        ('A354FUX', 'Tsuru', 2011),
        ('A355FUX', 'Tsuru', 2013),
        ('A356FUX', 'Tsuru', 2016),
        ('A357FUX', 'Tsuru', 2015),
        ('A358FUX', 'Tsuru', 2014),
        ('A359FUX', 'Tsuru', 2012),
        ('A360FUX', 'Tsuru', 2010),
        ('A361FUX', 'Tsuru', 2011),
        -- Versas
        ('A901FUY', 'Versa', 2018),
        ('A902FVC', 'Versa', 2017),
        ('A903FVD', 'Versa', 2019),
        ('A904FVB', 'Versa', 2018),
        ('A905FVA', 'Versa', 2019),
        ('A906FVC', 'Versa', 2017),
        ('A907FUX', 'Versa', 2018),
        ('A908FUY', 'Versa', 2019),
        -- Aveos
        ('A528FUZ', 'Aveo', 2017),
        ('A529FUZ', 'Aveo', 2016),
        ('A530FUZ', 'Aveo', 2015),
        ('A531FUZ', 'Aveo', 2018);
    COMMIT TRANSACTION;
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
       SELECT
        ERROR_NUMBER()  AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_LINE()    AS ErrorLine;

END CATCH;
GO
_______________________________________________________________________________________________________

--Insert of data to table "drivers"
	
BEGIN TRANSACTION;

BEGIN TRY
	INSERT INTO car_control.drivers
	(full_name, phone_number)
	VALUES
('Victor Hugo Ambriz Parra','7713449789'),
('Raul Antonio Garcia Cruz','7712385850'),
('Jorge Luis Mendoza Torres','7714598832'),
('Carlos Alberto Rios Suarez','7715126674'),
('Jose Manuel Torres Garcia','7717441298'),
('Marco Antonio Perez Ortiz','7716894521'),
('Luis Fernando Sanchez Lara','7719037764'),
('Miguel Angel Salgado Ruiz','7716559872'),
('Ricardo Daniel Soto Vargas','7718421190'),
('Hector Ivan Morales Pineda','7713902844'),
('Juan Carlos Muñoz Herrera','7717283401'),
('Alejandro Rosales Trejo','7719453328'),
('Erick Eduardo Sandoval Rios','7716039127'),
('David Alejandro Guzman Pozo','7712876649'),
('Rogelio Hernandez Silva','7714429086'),
('Mario Alberto Figueroa Diaz','7713982275'),
('Ivan Alejandro Luna Perez','7717103498'),
('Oscar Daniel Benitez Reyes','7718842301'),
('Sergio Armando Medina Flores','7715298840'),
('Francisco Javier Roldan Ruiz','7717361198'),
('Gustavo Emilio Ramirez Cano','7719012295'),
('Adrian Lopez Hurtado','7716648893'),
('Cristian Omar Rivera Solis','7718824710'),
('Fidel Alejandro Lopez Diaz','7712998543'),
('Ruben Alberto Torres Mejia','7715301248'),
('Manuel de Jesus Aguirre Razo','7717843290'),
('Jonathan Alexis Garcia Rivas','7716124438'),
('Diego Armando Flores Vela','7719482305'),
('Hugo Daniel Nieto Vargas','7715503398'),
('Brandon Isaac Gomez Lugo','7717369925'),
('Luis Gerardo Salazar Ruiz','7718201994'),
('Fernando Josue Montiel Cruz','7716338720'),
('Javier Alonso Ramirez Luna','7714039801'),
('German Ricardo Treviño Soto','7717225593')

	COMMIT TRANSACTION;
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION;
	   SELECT
        ERROR_NUMBER()  AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_LINE()    AS ErrorLine;

END CATCH;
GO
