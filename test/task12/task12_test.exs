defmodule Task12Test do
  use ExUnit.Case

  test "for_impl finds triangle number with >500 divisors" do
    assert Task12.ForImpl.For.solve(500) == 76_576_500
  end

  test "map_impl finds triangle number with >500 divisors" do
    assert Task12.MapImpl.MapImpl.solve(500) == 76_576_500
  end

  test "lazy_impl finds triangle number with >500 divisors" do
    assert Task12.LazyCol.Lazy.solve(500) == 76_576_500
  end

  test "modular_impl.filter_reduce finds triangle number with >500 divisors" do
    assert Task12.ModularImpl.FilterReduce.solve(500) == 76_576_500
  end

  test "modular_impl.req finds triangle number with >500 divisors" do
    assert Task12.ModularImpl.Req.solve_rec(500) == 76_576_500
  end

  test "modular_impl.tail_req finds triangle number with >500 divisors" do
    assert Task12.ModularImpl.TailReq.solve(500) == 76_576_500
  end
end
