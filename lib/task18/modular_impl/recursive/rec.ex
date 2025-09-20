defmodule Task18.ModularImpl.Recursive.Rec do
  def solve(triangle) do
    [row | _] = recursive_reduce(Enum.reverse(triangle))
    row
  end

  def recursive_reduce([row]), do: row

  def recursive_reduce([lower, upper | rest]) do
    new_row = Enum.with_index(upper)
    |> Enum.map(fn {val,i} -> val + max(Enum.at(lower,i), Enum.at(lower,i+1)) end )

    [new_row | recursive_reduce([ lower | rest ])]
  end

end
