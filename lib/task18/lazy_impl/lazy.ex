defmodule Task18.LazyImpl.Lazy do
  def solve(triangle) do
    Enum.reverse(triangle)
    |> Stream.iterate(triangle, &collapse_step/1)
    |> Enum.find(fn rows -> length(rows) == 1 end)
    |> hd()
  end

  def collapse_step([lower, upper | rest]) do
    new_row =
      Enum.map(
        Enum.with_index(upper),
        fn {val, i} -> val + max(Enum.at(lower, i), Enum.at(lower, i + 1)) end
      )

    [new_row | rest]
  end
end
