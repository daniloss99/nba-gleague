#!/bin/bash

dbt deps

dbt run-operation stage_external_sources --vars "ext_full_refresh: true"

dbt build --select '.\models\2-prepared\*'