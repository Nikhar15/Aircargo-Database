select sum(Price_per_ticket) as revenue, if(sum(Price_per_ticket) >10000, "Revenue crossed 10000", "Revenue not crossed 10000") 
as check_revenue from ticket_details