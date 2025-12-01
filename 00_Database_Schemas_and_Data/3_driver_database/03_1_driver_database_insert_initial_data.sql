--Insert of data to table "driver_data"


BEGIN TRANSACTION;

BEGIN TRY
	INSERT INTO Driver_Database.driver_data
	(id_driver, id_car, age, cellphone, address, housing_status, housing_description, emergency_contact_number, 
	emergency_contact_relationship, work_history, previous_employer_contact, license_expiration, driver_badge_expiration)
	VALUES
(1, 12, 42, '7713449789', 'Av. Revolución 154, Pachuca', 'Rentada', 'Departamento pequeño compartido', '7711122345', 'Hermano', '3 años como chofer en empresa local', '7719988201', '2026-11-12', '2026-09-30'),
(2, 7, 39, '7712385850', 'Calle Cedros 219, Pachuca', 'Propia', 'Casa familiar de dos pisos', '7711134522', 'Esposa', '5 años en transporte urbano', '7719988202', '2027-01-05', '2026-10-15'),
(3, 29, 45, '7714598832', 'Priv. Encinos 45, Pachuca', 'Propia', 'Casa independiente', '7711148932', 'Madre', '6 años en empresa de mensajería', '7719988203', '2026-08-22', '2026-07-19'),
(4, 18, 33, '7715126674', 'Col. Minerales 34, Mineral de la Reforma', 'Rentada', 'Departamento en renta', '7711150083', 'Padre', '2 años de experiencia en taxis', '7719988204', '2026-12-30', '2026-10-10'),
(5, 37, 47, '7717441298', 'Av. Universidad 201, Pachuca', 'Propia', 'Casa propia en zona céntrica', '7711160023', 'Hermana', '10 años como conductor particular', '7719988205', '2027-03-14', '2027-02-28'),
(6, 21, 41, '7716894521', 'Calle Pirules 89, Pachuca', 'Rentada', 'Cuarto independiente', '7711172345', 'Esposa', '4 años en plataforma digital', '7719988206', '2026-04-19', '2026-05-10'),
(7, 9, 38, '7719037764', 'Col. ISSSTE 12, Pachuca', 'Propia', 'Casa familiar', '7711185567', 'Madre', '5 años manejando transporte empresarial', '7719988207', '2026-11-05', '2026-10-02'),
(8, 35, 36, '7716559872', 'San Antonio 202, Pachuca', 'Rentada', 'Departamento pequeño', '7711197854', 'Hermano', '3 años en empresa de transporte', '7719988208', '2027-06-21', '2027-04-15'),
(9, 1, 44, '7718421190', 'Calle Tezontle 301, Pachuca', 'Propia', 'Casa en zona residencial', '7711203344', 'Padre', '8 años en servicio ejecutivo', '7719988209', '2026-10-10', '2026-09-12'),
(10, 27, 40, '7713902844', 'Col. Matilde 55, Pachuca', 'Rentada', 'Departamento compartido', '7711215588', 'Esposa', '5 años en transporte escolar', '7719988210', '2027-02-08', '2026-12-22'),
(11, 14, 35, '7717283401', 'Col. Periodistas 23, Pachuca', 'Propia', 'Casa propia', '7711229944', 'Madre', '4 años como conductor particular', '7719988211', '2027-07-14', '2027-05-09'),
(12, 5, 30, '7719453328', 'Av. Juárez 201, Pachuca', 'Rentada', 'Departamento nuevo', '7711232290', 'Hermana', '2 años como chofer en empresa privada', '7719988212', '2026-08-08', '2026-06-20'),
(13, 33, 32, '7716039127', 'Camino Real 155, Pachuca', 'Propia', 'Casa de interés social', '7711241123', 'Esposa', '3 años en transporte de personal', '7719988213', '2027-03-19', '2027-01-30'),
(14, 40, 28, '7712876649', 'Real de Minas 42, Pachuca', 'Rentada', 'Departamento chico', '7711254433', 'Padre', '2 años en reparto de paquetería', '7719988214', '2026-12-01', '2026-10-28'),
(15, 22, 46, '7714429086', 'Col. La Providencia 12, Mineral', 'Propia', 'Casa consolidada', '7711260044', 'Madre', '9 años en transporte de personal', '7719988215', '2027-02-17', '2027-01-11'),
(16, 13, 43, '7713982275', 'Col. San Javier 88, Pachuca', 'Propia', 'Casa grande', '7711279988', 'Esposa', '7 años en taxis regulados', '7719988216', '2026-09-15', '2026-08-04'),
(17, 8, 34, '7717103498', 'Col. El Palmar 66, Pachuca', 'Rentada', 'Departamento compartido', '7711285566', 'Hermano', '3 años como conductor privado', '7719988217', '2027-01-28', '2026-12-10'),
(18, 19, 29, '7718842301', 'Calle Magnolia 17, Pachuca', 'Rentada', 'Departamento sencillo', '7711291121', 'Hermana', '1 año en empresa de logística', '7719988218', '2026-05-30', '2026-04-18'),
(19, 2, 48, '7715298840', 'Col. Piracantos 102, Pachuca', 'Propia', 'Casa de ladrillo', '7711300099', 'Esposa', '10 años en transporte local', '7719988219', '2027-04-11', '2027-02-26'),
(20, 17, 31, '7717361198', 'Av. Madero 399, Pachuca', 'Rentada', 'Departamento amplio', '7711315550', 'Padre', '3 años como chofer de ruta', '7719988220', '2026-07-07', '2026-05-30'),
(21, 6, 37, '7719012295', 'Calle Abedules 74, Pachuca', 'Propia', 'Casa familiar', '7711324488', 'Madre', '4 años en empresa privada', '7719988221', '2026-11-19', '2026-09-25'),
(22, 23, 42, '7716648893', 'Col. Morelos 119, Pachuca', 'Rentada', 'Departamento sencillo', '7711337722', 'Esposa', '6 años como conductor ejecutivo', '7719988222', '2027-06-04', '2027-03-22'),
(23, 25, 33, '7718824710', 'Calle Jacarandas 91, Pachuca', 'Propia', 'Casa pequeña', '7711348899', 'Hermano', '4 años en empresa de transporte', '7719988223', '2026-12-09', '2026-11-02'),
(24, 3, 38, '7712998543', 'Col. La Raza 231, Pachuca', 'Rentada', 'Departamento compartido', '7711352233', 'Padre', '5 años como chofer privado', '7719988224', '2026-10-29', '2026-08-21'),
(25, 31, 29, '7715301248', 'Paseos de la Plata 78, Pachuca', 'Rentada', 'Estudio individual', '7711369987', 'Esposa', '2 años en reparto local', '7719988225', '2027-02-13', '2026-12-28'),
(26, 10, 49, '7717843290', 'Col. Cubitos 33, Pachuca', 'Propia', 'Casa antigua', '7711370088', 'Hermana', '12 años en transporte comercial', '7719988226', '2026-09-09', '2026-07-30'),
(27, 24, 44, '7716124438', 'San Cayetano 144, Pachuca', 'Rentada', 'Departamento grande', '7711386677', 'Madre', '7 años en empresa de seguridad', '7719988227', '2027-03-03', '2027-01-19'),
(28, 4, 41, '7719482305', 'Col. Santa Julia 88, Pachuca', 'Propia', 'Casa familiar', '7711394421', 'Esposa', '6 años en transporte público', '7719988228', '2026-08-25', '2026-07-14'),
(29, 38, 36, '7715503398', 'Col. San Antonio 71, Pachuca', 'Rentada', 'Cuarto en renta', '7711402234', 'Hermano', '3 años en mensajería', '7719988229', '2026-11-11', '2026-09-03'),
(30, 30, 32, '7717369925', 'Col. Lomas 122, Pachuca', 'Rentada', 'Estudio pequeño', '7711419900', 'Padre', '4 años de experiencia en taxis libres', '7719988230', '2026-12-18', '2026-11-05'),
(31, 11, 27, '7718201994', 'Av. Industriales 45, Pachuca', 'Rentada', 'Cuarto económico', '7711425567', 'Esposa', '1 año de experiencia en transporte', '7719988231', '2026-06-17', '2026-05-12'),
(32, 32, 34, '7716338720', 'Col. El Venado 53, Mineral', 'Propia', 'Casa de dos pisos', '7711438844', 'Madre', '3 años en taxi ejecutivo', '7719988232', '2027-04-22', '2027-03-08'),
(33, 28, 39, '7714039801', 'Col. Parque de Poblamiento 25, Pachuca', 'Rentada', 'Departamento', '7711443399', 'Hermano', '5 años como chofer en empresa minera', '7719988233', '2026-09-02', '2026-07-20'),
(34, 20, 46, '7717225593', 'Col. Villas de Pachuca 69', 'Propia', 'Casa amplia', '7711456671', 'Esposa', '9 años en transporte ejecutivo', '7719988234', '2027-01-09', '2026-12-03')

	COMMIT TRANSACTION;
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION;
	
		SELECT
			ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			ERROR_LINE() AS ErrorLine
END CATCH;
GO 
