use role transform;
use warehouse dbt_wh;

use database AIRBNB;
use schema raw;

with raw_listings as (
    select
        *
    from
        airbnb.raw.raw_listings
)
select
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    updated_at
from
    raw_listings



with raw_reviews as (
    select
        *
    from
        airbnb.raw.raw_reviews
)
select
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from
    raw_reviews



with raw_hosts as (
    select
        *
    from
       airbnb.raw.raw_hosts
)
select
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
from
    raw_hosts


