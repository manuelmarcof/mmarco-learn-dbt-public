SELECT
*
FROM {{ ref('playing_with_test')}}
WHERE c_mktsegment not in ('BUILDING', 'AUTOMOBILE', 'MACHINERY', 'HOUSEHOLD', 'FURNITURE')
