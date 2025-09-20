defmodule Task18.MapImpl.Map do
  def solve(triangle) do
    Enum.reverse(triangle)
    |> collapse()
    |> hd()
  end

  def collapse([row]), do: row

  def collapse([lower, upper | rest]) do
    [
      Enum.map(
        Enum.with_index(upper),
        fn {val, i} -> val + max(Enum.at(lower, i), Enum.at(lower, i + 1)) end
      )
      | rest
    ]
    |> collapse()
  end
end
