defmodule Task18Test do
  use ExUnit.Case

  @triangle [
    [3],
    [7, 4],
    [2, 4, 6],
    [8, 5, 9, 3]
  ]

  test "for_impl solves sample triangle" do
    assert Task18.ForImpl.solve(@triangle) == 23
  end

  test "map_impl solves sample triangle" do
    assert Task18.MapImpl.solve(@triangle) == 23
  end

  test "lazy_impl solves sample triangle" do
    assert Task18.LazyImpl.solve(@triangle) == 23
  end

  test "modular_impl.recursive solves sample triangle" do
    assert Task18.ModularImpl.Recursive.solve(@triangle) == 23
  end

  test "modular_impl.tail_rec solves sample triangle" do
    assert Task18.ModularImpl.TailRec.solve(@triangle) == 23
  end

  test "modular_impl.reduce solves sample triangle" do
    assert Task18.ModularImpl.Reduce.solve(@triangle) == 23
  end
end
