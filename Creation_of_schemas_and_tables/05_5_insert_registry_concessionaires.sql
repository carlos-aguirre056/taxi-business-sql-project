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
