--equipment type
update dw.shipments as ship
set ship.equipment_type_id = eq_type.id
from (
    select distinct
    st.loadsmart_id,
    c.id as id
from loadsmart.stage st
inner join dw.equipment_type as c on c.name = st.equipment_type
) as eq_type
where ship.loadsmart_id = eq_type.loadsmart_id;

select * from dw.shipments;