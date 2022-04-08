CREATE OR REPLACE TABLE dw.lane AS
select 
    GENERATE_UUID() as id,
    s.name as name
FROM (select distinct a.lane  as name from loadsmart.stage a) as s;

CREATE OR REPLACE TABLE dw.carrier AS
select 
    GENERATE_UUID() as id,
    s.name as name,
    s.vip_carrier as vip_carrier
FROM (select distinct a.carrier_name as name, a.vip_carrier as vip_carrier from loadsmart.stage a) as s;

CREATE OR REPLACE TABLE dw.shipper AS
select 
    GENERATE_UUID() as id,
    s.name as name
FROM (select distinct a.shipper_name as name from loadsmart.stage a) as s;

CREATE OR REPLACE TABLE dw.equipment_type AS
select 
    GENERATE_UUID() as id,
    s.name as name
FROM (select distinct a.equipment_type as name from loadsmart.stage a) as s;

CREATE OR REPLACE TABLE dw.shipments AS
select 
    s.loadsmart_id,
    s.quote_date,
    s.book_date,
    s.source_date,
    s.pickup_date,
    s.delivery_date,
    s.book_price,
    s.source_price,
    s.book_price - s.source_price as pnl,
    s.mileage,
    s.carrier_rating,
    s.sourcing_channel,
    s.carrier_dropped_us_count,
    s.carrier_on_time_to_pickup,
    s.carrier_on_time_to_delivery,
    s.carrier_on_time_overall,
    s.pickup_appointment_time,
    s.delivery_appointment_time,
    s.has_mobile_app_tracking,
    s.has_mobile_app_tracking_24,
    s.has_macropoint_tracking,
    s.has_edi_tracking,
    s.contracted_load,
    s.load_booked_autonomously,
    s.load_sourced_autonomously,
    s.load_was_cancelled,
    '' as lane_id,
    '' as carrier_id,
    '' as shipper_id,
    '' as equipment_type_id
FROM loadsmart.stage s;

select * from dw.shipments;
