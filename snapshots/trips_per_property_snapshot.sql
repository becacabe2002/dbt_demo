{% snapshot trips_per_property_snapshot %}

/*
add config for a single snapshot
*/

{{
config(
	target_schema='snapshots',
	strategy='check',
	unique_key='property_type',
	check_cols=['trips'],
)
}}

	select * from {{ ref('trips_per_property') }}

{% endsnapshot %}
