select distinct passengers_on_flights.customer_id,passengers_on_flights.route_id,customer.first_name,customer.last_name 
from air_cargo_database.passengers_on_flights, air_cargo_database.customer
where route_id between 1 and 25 order by customer_id