defmodule Task12.LazyCol.Lazy do
  import Task12.ModularImpl.TailReq, only: [divisors_count: 1]

  def solve(limit \\ 500) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(fn n ->
      t = div(n * (n + 1), 2)
      {t, divisors_count(t)}
    end)
    |> Enum.find(fn {_t, count} -> count > limit end)
    |> elem(0)
  end
end
