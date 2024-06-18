{{
    config(
        alias = 'players'
    ) 
}}

select {{ dbt_utils.star(from=source('nba_gleague_raw', 'ext_players'), except=['value']) }}
from {{ source('nba_gleague_raw', 'ext_players') }}