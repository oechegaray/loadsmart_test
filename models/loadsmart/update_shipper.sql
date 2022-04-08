--shipper
update dw.shipments as ship
set ship.shipper_id = shipper.id
from (
    select distinct
    st.loadsmart_id,
    c.id as id
from loadsmart.stage st
inner join dw.shipper as c on c.name = st.shipper_name
) as shipper
where ship.loadsmart_id = shipper.loadsmart_id;

select * from dw.shipments;