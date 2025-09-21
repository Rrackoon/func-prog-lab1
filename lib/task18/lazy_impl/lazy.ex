defmodule Task18.LazyImpl.Lazy do
  def solve(triangle) do
    Stream.iterate(Enum.reverse(triangle), &collapse_step/1)
    |> Enum.find(fn rows -> length(rows) == 1 end)
    |> hd() #[23]
    |> hd() #23
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
