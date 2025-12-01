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
