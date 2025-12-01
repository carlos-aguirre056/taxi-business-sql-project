/*
The Vehicle emission test or "Verificacion vehicular" in Spanish is a biannual mandatory test for all cars 
in Mexico. For a taxi business having all cars right on track with this procedure is very important to avoid fees.

Cars that have to pass the Vehicle Emission Test on November 2025 (Based in real governmental rules):
Any vehicle whose last number in the license plate is: 1,2,9 or 0. (Ex. A330FUX).

Information needed to issue an appointment for this test: 
- license_plate
- VIN_number
- concession_holder
- car_model
- year_model.
*/
  
SELECT 
    t.license_plate AS license_plate, 
    t.vin_number AS VIN_number,
	  t.year_model AS year_model,
	  car.model AS car_model, 
	  c.full_name AS concessionaire

FROM Registry_of_Taxis_and_Concessionaires.taxis AS t
	LEFT JOIN car_control.cars AS car
		ON t.id_car=car.id_car
	LEFT JOIN Registry_of_Taxis_and_Concessionaires.concessionaires AS c
		ON t.id_concession_holder=c.id_concession_holder

	WHERE t.license_plate LIKE '___[1290]%'
	-- In WHERE you have to use the table alias "t" before the actual column name 
	-- "license_plate" (NOT the SELECT alias), because WHERE is evaluated before SELECT. 
	-- SELECT column aliases do not exist yet at the WHERE stage.
  
	ORDER BY concessionaire ASC
	-- In ORDER BY you can use the SELECT alias ("concessionaire") because ORDER BY 
	-- is evaluated after SELECT, so the alias already exists and is valid to reference.
	;
