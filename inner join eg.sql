select distinctrow customer.first_name,customer.last_name,ticket_details.no_of_tickets from ticket_details inner join customer 
on customer.customer_id = ticket_details.customer_id