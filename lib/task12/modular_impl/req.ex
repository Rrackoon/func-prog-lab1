defmodule Task12.ModularImpl.Req do
  # def sum_recursive(1), do: 1
  # def sum_recursive(n), do: n+sum_recursive(n-1)

  def solve_rec(n, limit) do
    tri = div(n * (n + 1), 2)

    if divisors_count(tri) > limit do
      tri
    else
      solve_rec(n + 1, limit)
    end
  end

  def solve_rec(limit), do: solve_rec(1, limit)

  def divisors_count(n) do
    divisors_count(n, 1, 0)
  end

  def divisors_count(n, d, acc) when d * d > n, do: acc

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

  # def check(n, limit) do
  #  t=sum_recursive(n)
  #  if divisors_count(t) > limit do
  #    t
  #  else
  #    check(n+1, limit)
  #  end
  # end

  # def solve_recursive(limit), do: check(1, limit)
end
