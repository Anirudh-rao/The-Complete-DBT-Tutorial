use role accountadmin;


-- Creating and Granting  Custom Role
create or replace role Transform;
grant  role transform to role accountadmin;

-- Create and Grant new warehouse for this course
create or replace warehouse dbt_wh;
grant operate on warehouse dbt_wh to role transform;

-- Creating and Granting new User to role transform
create or replace  user dbt
  password='dbtpassword123'
  login_name='dbt'
  must_change_password=false
  default_warehouse='dbt_wh'
  default_role=transform
  default_namespace='airbnb.raw'
  comment='dbt user used for data transformation';

alter user dbt set type = legacy_service;
grant role transform to user dbt;

-- create our database and schemas
create database if not exists airbnb;
create schema if not exists airbnb.raw;

-- set up permissions to role `transform`
grant all on warehouse dbt_wh to role transform; 
grant all on database airbnb to role transform;
grant all on all schemas in database airbnb to role transform;
grant all on future schemas in database airbnb to role transform;
grant all on all tables in schema airbnb.raw to role transform;
grant all on future tables in schema airbnb.raw to role transform;