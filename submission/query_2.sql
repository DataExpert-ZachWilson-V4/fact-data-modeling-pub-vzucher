CREATE or REPLACE TABLE user_devices_cumulated (
    user_id bigint,
    browser_type varchar,
    dates_active array(date),
    date date
)
WITH (
    format = 'PARQUET',
    partitioning = array['date']
)