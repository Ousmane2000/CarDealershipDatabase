select name as 'dealership Name' 
from dealerships d
join inventory i
on d.dealership_id = i.dealership_id
where Vin =1234567;