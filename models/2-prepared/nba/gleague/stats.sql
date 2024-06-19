{{
    config(
        alias = 'stats'
    ) 
}}

select {{ dbt_utils.star(from=source('nba_gleague_external', 'ext_stats'), except=['value']) }}
from {{ source('nba_gleague_external', 'ext_stats') }}