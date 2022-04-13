select
  sum(c_acctbal) as totals_nulls

FROM {{ ref('playing_with_test')}}

having sum(c_acctbal) < 100000000
