select d.name as 'Dealership Name', i.make, i.model, i.color, i.Vin
from dealerships d
join inventory i
on d.dealership_id = i.dealership_id
where d.name = 'Hilside Toyota';