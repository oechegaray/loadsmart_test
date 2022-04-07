--lanes
update dw.shipments as ship
set ship.lane_id = lanes.lane_id
from (
    select distinct
    st.loadsmart_id,
    l.id as lane_id
from loadsmart.stage st
inner join dw.lane as l on l.name = st.lane
) as lanes
where ship.loadsmart_id = lanes.loadsmart_id;

select * from dw.shipments;