with supplier as (
    select * from {{ ref("RAW_supplier") }}
),
nation as (
    select * from {{ ref("RAW_nation") }}
),
region as (
    select * from {{ ref("RAW_region") }}
)


select 
s.s_suppkey as suppkey,
s.s_name as  name,
s.s_address as address,
s.s_phone as phone,
s.s_acctbal as account_balance,
n.n_name as nation,
r.r_name as region
 from supplier s join nation n on n.n_nationkey = s.s_nationkey 
 join region r on n.n_regionkey = r.r_regionkey
