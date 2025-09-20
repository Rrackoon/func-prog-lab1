defmodule Task12.ModularImpl.FilterReduce do

  import Task12.ModularImpl.TailReq, only: [divisors_count: 1]

  def solve(limit \\ 500, max_n \\ 50_000) do
    1..max_n
    |> Enum.map(&triangle/1)
    |> Enum.map( fn t -> {t,divisors_count(t)} end)
    |> Enum.filter(fn {_t,count} -> count> limit end)
    #|> Enum.at(0)
    |> Enum.reduce(nil, fn {t, c}, acc ->
      if acc == nil  do
        {t,c}
      else
        acc
      end
    end)
  end

  def triangle(n) do
    div(n*(n+1),2)
  end
end
