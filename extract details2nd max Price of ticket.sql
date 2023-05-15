select * from ticket_details 
where Price_per_ticket = (select max(Price_per_ticket) from ticket_details
 where Price_per_ticket< (select max(Price_per_ticket) from ticket_details))