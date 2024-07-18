with partsupp as (
    select * from {{ ref("RAW_partsupp") }}
),
with part as (
    select * from {{ ref("RAW_part") }}
)

select 
ps_partkey as partkey,
ps_suppkey as suppkey,
ps_availqty as available_quantity,
ps_supplycost as supplycost,
p_name as name,
p_mfgr as manufacturer,
p_brand as brand,
p_type as type,
p_size as size,
p_container as container,
p_retailprice as retailprice,
from partsupp ps 
join part p on p.p_partkey = ps.ps_partkey


-- partkey
-- suppkey
-- available_quantity
-- supplycost
-- name
-- manufacturer
-- brand
-- type
-- size
-- container
-- retailprice