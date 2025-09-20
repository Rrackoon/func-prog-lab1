defmodule Task12.ForImpl.For do

  import Task12.ModularImpl.TailReq, only: [divisors_count: 1]

  def solve(limit \\ 500, max_n \\ 50_000) do
    results =
      for n <- 1..max_n, t=div(n*(n+1),2), divisors_count(t) > limit do
        {t,divisors_count(t)}
      end
      hd(results)
  end


end
