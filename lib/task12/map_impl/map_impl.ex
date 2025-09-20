defmodule Task12.MapImpl.MapImpl do

  import Task12.ModularImpl.TailReq, only: [divisors_count: 1]

  def solve(limit \\ 500, max_n \\ 50_000) do
    1..max_n
    |> Enum.map(fn n -> div(n*(n+1),2) end)
    |> Enum.map(fn t -> {t,divisors_count(t)} end)
    |> Enum.find(fn {_t,count} -> count > limit end )
  end

end
