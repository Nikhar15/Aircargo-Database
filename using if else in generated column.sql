CREATE PROCEDURE `Route_category` ()
BEGIN
alter table routes add column category varchar(4)
 generated always as (if (routes.distance_miles<=2000,"SDT",if(routes.distance_miles <=6500,"IDT","LDT"))) stored;
END
