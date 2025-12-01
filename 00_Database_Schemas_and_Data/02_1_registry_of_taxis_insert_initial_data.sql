--Insert of data to table "concessionaires"

BEGIN TRANSACTION;

BEGIN TRY
	INSERT INTO Registry_of_Taxis_and_Concessionaires.concessionaires(
    full_name,
    street,
    street_number,
    neighborhood,
    postal_code,
    town,
    municipality)
    VALUES
('Miguel Ángel Zamora Téllez','Lázaro Cárdenas','128','La Providencia','42185','Mineral de la Reforma','Mineral de la Reforma'),
('Rosa Elena Bautista Molina','Niños Héroes','45','El Saucillo','42186','Mineral de la Reforma','Mineral de la Reforma'),
('Ismael Gerardo Pérez Ramírez','21 de Marzo','233','El Chacón','42183','Mineral de la Reforma','Mineral de la Reforma'),
('Claudia Verónica Martínez Soto','Benito Juárez','72','La Calera','43560','Santiago Tlapacoya','Pachuca de Soto'),
('José Armando Gómez Herrera','Independencia','19','El Venado','43540','Santa María Asunción','Mineral del Chico'),
('María Leticia Ortega López','Reforma','301','Santa Matilde','42162','Tizayuca','Tizayuca'),
('Ricardo Andrés Valdez Corona','Hidalgo','57','Centro','43800','Zempoala','Zempoala'),
('Norma Patricia Rivas Calderón','5 de Mayo','210','San Miguel','43810','Epazoyucan','Epazoyucan');

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
           SELECT
            ERROR_MESSAGE() AS ErrorMessage,
            ERROR_LINE() AS ErrorLine,
            ERROR_NUMBER() AS ErrorNumber;
END CATCH;
GO


______________________________________________________________________________________________________

--Insert of data to table "taxis"
	
BEGIN TRANSACTION;

BEGIN TRY
	INSERT INTO Registry_of_Taxis_and_Concessionaires.taxis(
	id_car,
    license_plate,
    year_model,
    vin_number,
    id_concession_holder,
    authorization_number,
    insurance_policy_number,
    insurance_company)
    VALUES
(1, 'A152FVB', 2014, '3N1EB31SX9K123001', 1, 3721, 31010289500100, 'Afirme'),
(2, 'A158FVD', 2016, '3N1EB31SX9K123002', 1, 3722, 31010289500200, 'La Latino'),
(3, 'A161FVB', 2013, '3N1EB31SX9K123003', 1, 3723, 31010289500300, 'GNP'),
(4, 'A325FUX', 2011, '3N1EB31SX9K123004', 1, 3724, 31010289500400, 'Mapfre'),
(5, 'A329FUX', 2010, '3N1EB31SX9K123005', 1, 3725, 31010289500500, 'Afirme'),
(6, 'A334FUX', 2015, '3N1EB31SX9K123006', 2, 3726, 31010289500600, 'La Latino'),
(7, 'A340FUX', 2012, '3N1EB31SX9K123007', 2, 3727, 31010289500700, 'GNP'),
(8, 'A341FUX', 2010, '3N1EB31SX9K123008', 2, 3728, 31010289500800, 'Mapfre'),
(9, 'A342FUX', 2009, '3N1EB31SX9K123009', 2, 3729, 31010289500900, 'Afirme'),
(10, 'A343FUX', 2014, '3N1EB31SX9K123010', 2, 3730, 31010289501000, 'La Latino'),
(11, 'A344FUX', 2015, '3N1EB31SX9K123011', 3, 3731, 31010289501100, 'GNP'),
(12, 'A345FUX', 2013, '3N1EB31SX9K123012', 3, 3732, 31010289501200, 'Mapfre'),
(13, 'A346FUX', 2010, '3N1EB31SX9K123013', 3, 3733, 31010289501300, 'Afirme'),
(14, 'A347FUX', 2011, '3N1EB31SX9K123014', 3, 3734, 31010289501400, 'La Latino'),
(15, 'A348FUX', 2016, '3N1EB31SX9K123015', 3, 3735, 31010289501500, 'GNP'),
(16, 'A349FUX', 2015, '3N1EB31SX9K123016', 4, 3736, 31010289501600, 'Mapfre'),
(17, 'A350FUX', 2014, '3N1EB31SX9K123017', 4, 3737, 31010289501700, 'Afirme'),
(18, 'A351FUX', 2017, '3N1EB31SX9K123018', 4, 3738, 31010289501800, 'La Latino'),
(19, 'A352FUX', 2010, '3N1EB31SX9K123019', 4, 3739, 31010289501900, 'GNP'),
(20, 'A353FUX', 2012, '3N1EB31SX9K123020', 4, 3740, 31010289502000, 'Mapfre'),
(21, 'A354FUX', 2011, '3N1EB31SX9K123021', 5, 3741, 31010289502100, 'Afirme'),
(22, 'A355FUX', 2013, '3N1EB31SX9K123022', 5, 3742, 31010289502200, 'La Latino'),
(23, 'A356FUX', 2016, '3N1EB31SX9K123023', 5, 3743, 31010289502300, 'GNP'),
(24, 'A357FUX', 2015, '3N1EB31SX9K123024', 5, 3744, 31010289502400, 'Mapfre'),
(25, 'A358FUX', 2014, '3N1EB31SX9K123025', 5, 3745, 31010289502500, 'Afirme'),
(26, 'A359FUX', 2012, '3N1EB31SX9K123026', 6, 3746, 31010289502600, 'La Latino'),
(27, 'A360FUX', 2010, '3N1EB31SX9K123027', 6, 3747, 31010289502700, 'GNP'),
(28, 'A361FUX', 2011, '3N1EB31SX9K123028', 6, 3748, 31010289502800, 'Mapfre'),
(29, 'A901FUY', 2018, '3N1EB31SX9K123029', 6, 3749, 31010289502900, 'Afirme'),
(30, 'A902FVC', 2017, '3N1EB31SX9K123030', 7, 3750, 31010289503000, 'La Latino'),
(31, 'A903FVD', 2019, '3N1EB31SX9K123031', 7, 3751, 31010289503100, 'GNP'),
(32, 'A904FVB', 2018, '3N1EB31SX9K123032', 7, 3752, 31010289503200, 'Mapfre'),
(33, 'A905FVA', 2019, '3N1EB31SX9K123033', 7, 3753, 31010289503300, 'Afirme'),
(34, 'A906FVC', 2017, '3N1EB31SX9K123034', 7, 3754, 31010289503400, 'La Latino'),
(35, 'A907FUX', 2018, '3N1EB31SX9K123035', 8, 3755, 31010289503500, 'GNP'),
(36, 'A908FUY', 2019, '3N1EB31SX9K123036', 8, 3756, 31010289503600, 'Mapfre'),
(37, 'A528FUZ', 2017, '3N1EB31SX9K123037', 8, 3757, 31010289503700, 'Afirme'),
(38, 'A529FUZ', 2016, '3N1EB31SX9K123038', 8, 3758, 31010289503800, 'La Latino'),
(39, 'A530FUZ', 2015, '3N1EB31SX9K123039', 8, 3759, 31010289503900, 'GNP'),
(40, 'A531FUZ', 2018, '3N1EB31SX9K123040', 8, 3760, 31010289504000, 'Mapfre');

    COMMIT TRANSACTION;

END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;

END CATCH;
GO

