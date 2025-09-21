defmodule Task18.Forimpl.For do
  def solve(triangle) do
    Enum.reduce(Enum.reverse(triangle), fn upper, lower ->
      for {val, i} <- Enum.with_index(upper) do
        val + max(Enum.at(lower, i), Enum.at(lower, i + 1))
      end
    end)
    |> hd()
  end
end
