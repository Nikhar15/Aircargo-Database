select distinctrow customer.first_name, customer.last_name, ticket_details.customer_id, ticket_details.brand from ticket_details inner join customer 
on customer.customer_id = ticket_details.customer_id where brand = "Emirates"