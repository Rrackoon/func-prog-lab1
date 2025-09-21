defmodule Task18.ModularImpl.Recursive.TailRec do
  def solve(triangle) do
    recursive_reduce(Enum.reverse(triangle))
  end

  def recursive_reduce([row]), do: hd(row)

  def recursive_reduce([lower, upper | rest]) do
    new_row =
      Enum.with_index(upper)
      |> Enum.map(fn {val, i} -> val + max(Enum.at(lower, i), Enum.at(lower, i + 1)) end)

    recursive_reduce([new_row | rest])
  end
end

# triangle = [
#  [3],
#  [7, 4],
#  [2, 4, 6],
#  [8, 5, 9, 3]
# ]

# Task18.Recursive.Rec.solve(triangle)
