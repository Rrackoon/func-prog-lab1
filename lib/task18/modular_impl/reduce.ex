defmodule Task18.ModularImpl.Reduce do
  def solve(triangle) do
    Enum.reverse(triangle)
    |> Enum.reduce(fn upper, lower ->
      Enum.map(
        Enum.with_index(upper),
        fn {val, i} -> val + max(Enum.at(lower, i), Enum.at(lower, i + 1)) end
      )
    end)
    |> hd()
  end
end
