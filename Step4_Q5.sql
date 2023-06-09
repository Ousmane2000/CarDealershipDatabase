select name as 'dealership Name' 
from dealerships d
join inventory i
on d.dealership_id = i.dealership_id
where i.color like "Red" and i.make like "Mercedes" and i.model like "Bemz";