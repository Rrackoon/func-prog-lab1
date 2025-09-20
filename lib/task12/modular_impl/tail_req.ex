defmodule Task12.ModularImpl.TailReq do
  def generate(n), do: div(n * (n + 1), 2)

  def divisors_count(n), do: divisors_count(n, 1, 0)

  def divisors_count(n, d, acc) when d * d > n do
    acc
  end

  def divisors_count(n, d, acc) do
    cond do
      rem(n, d) == 0 and d * d == n ->
        divisors_count(n, d + 1, acc + 1)

      rem(n, d) == 0 ->
        divisors_count(n, d + 1, acc + 2)

      true ->
        divisors_count(n, d + 1, acc)
    end
  end

  def solve(limit), do: solve(1, 1, limit)

  def solve(i, tri, limit) do
    if divisors_count(tri) > limit do
      tri
    else
      solve(i + 1, tri + (i + 1), limit)
    end
  end
end
