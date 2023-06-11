select *
from sales_contracts s
join inventory i
on s.Vin = i.Vin
join dealerships d
on d.dealership_id = i.dealership_id

where d.name = 'Advantage Honda' and date between '01-01-2020' and '01-01-2022';