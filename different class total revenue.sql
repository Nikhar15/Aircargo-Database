select class_id as class,count(customer_id) as no_of_passengers, sum(Price_per_ticket) as total_revenue 
from ticket_details group by class_id