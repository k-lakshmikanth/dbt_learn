with customer as (
    select * from {{ ref("RAW_customer") }}
),
nation as (
    select * from {{ ref("RAW_nation") }}
),
region as (
    select * from {{ ref("RAW_region") }}
)


select 
c.c_custkey as customerkey,
c.c_name as name,
c.c_address as address,
c.c_phone as phone,
c.c_acctbal as account_balance,
n.n_name as nation,
r.r_name as region
 from customer c join nation n on n.n_nationkey = c.c_nationkey 
 join region r on n.n_regionkey = r.r_regionkey