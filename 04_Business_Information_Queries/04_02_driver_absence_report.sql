/*
This query identifies drivers who exceeded a certain number of absences within a given period (November 2025). 
It returns all relevant contact and household information needed by operations staff to perform follow-up
or welfare checks.
*/

SELECT 
ccac.id_driver, 
-- id_driver is included to easily locate the driver’s records inside car_account_control.
cd.full_name AS driver_name,
cc.license_plate AS license_plate,
dd.cellphone AS cellphone_number,
dd.address AS house_address,
dd.housing_description AS house_description,
CONCAT(dd.emergency_contact_number,' ', dd.emergency_contact_relationship) AS cellphone_number_of_family,
COUNT(*) AS absences

FROM Driver_Database.driver_data AS dd
LEFT JOIN car_control.drivers AS cd
ON dd.id_driver=cd.id_driver
LEFT JOIN car_control.cars AS cc
ON dd.id_car=cc.id_car
LEFT JOIN car_control.car_account_control AS ccac
ON dd.id_driver=ccac.id_driver

WHERE ccac.fare_amount IS NULL AND ccac.operation_date BETWEEN '2025-11-01' AND '2025-11-30'
GROUP BY 
ccac.id_driver,
dd.id_driver,
cd.full_name,
cc.license_plate,
ccac.id_car,
dd.cellphone,
dd.address,
dd.housing_description,
CONCAT(dd.emergency_contact_number,' ', dd.emergency_contact_relationship)

HAVING COUNT(*)>7
ORDER BY absences DESC
;
