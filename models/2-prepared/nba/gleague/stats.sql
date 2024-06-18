{{
    config(
        alias = 'stats'
    ) 
}}

select {{ dbt_utils.star(from=source('nba_gleague_raw', 'ext_stats'), except=['value']) }}
from {{ source('nba_gleague_raw', 'ext_stats') }}