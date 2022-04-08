--carrier
update dw.shipments as ship
set ship.carrier_id = carrier.carrier_id
from (
    select distinct
    st.loadsmart_id,
    c.id as carrier_id
from loadsmart.stage st
inner join dw.carrier as c on c.name = st.carrier_name
) as carrier
where ship.loadsmart_id = carrier.loadsmart_id;

select * from dw.shipments;