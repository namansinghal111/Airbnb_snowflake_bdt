SELECT * FROM {{ ref('bronze_booking') }}
where NIGHT_BOOKED >= '2023-01-01' and NIGHT_BOOKED < '2024-01-01'