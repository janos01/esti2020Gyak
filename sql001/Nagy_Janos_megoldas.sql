-- 2021-02-10
-- Nagy János, 2/24 esti, virtuális, o

/* 1.) feladat:  */
create database demolition4
collate utf8_hungarian_ci
character set utf8


/* 3.) feladat:  */
select numberplate, brand
from vehicles
where year > 2010



/* 4.) feladat:  */

select count(*) as "Eladó kék járművek"
from vehicles
where color='kék'
and sold = 0



/* 5.) feladat:  */

select count(*) as "januári vásárlások"
from sales
where month(date)=1



/* 6.) feladat:  */


select customers.city

from (vehicles inner join sales
on vehicles.id = sales.vehicleId)
inner join customers
on sales.customerId = customers.id

where vehicles.color='kék'

order by customers.city asc

