select distinctrow customer.*, passengers_on_flights.route_id from customer, passengers_on_flights
 where customer.customer_id = passengers_on_flights.customer_id and route_id = 4