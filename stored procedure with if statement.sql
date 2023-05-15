CREATE DEFINER=`root`@`localhost` PROCEDURE `passenger_details`(in r_id_1 int, r_id_2 int, out message varchar(45))
BEGIN
declare mi int;
declare ma int;
select min(route_id) into mi from air_cargo_database.passengers_on_flights;
select max(route_id) into ma from air_cargo_database.passengers_on_flights;
if r_id_1 >= mi and r_id_1<= ma and r_id_2 >= mi and r_id_2<= ma then
select distinctrow customer.*, passengers_on_flights.customer_id, passengers_on_flights.route_id from air_cargo_database.customer,air_cargo_database.passengers_on_flights
where customer.customer_id = passengers_on_flights.customer_id and route_id between r_id_1 and r_id_2;
set message = "Passengers details according to given input";
else 
set message = "Invalid input";
end if;
END