defmodule Elixir99Problems.ListRotatorTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p19.html

  test "rotate list with duplicates works" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 5, 5, 2, 1], 3) == [5, 2, 1, 1, 2, 5] 
  end

  test "rotate list with index higher than list length works" do
    assert Elixir99Problems.ListRotator.rotate(Enum.to_list 1..10, 13) == [4, 5, 6, 7, 8, 9, 10, 1, 2, 3] 
  end

  test "rotate list at index 1 works" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 3, 4, 5], 1) == [2, 3, 4, 5, 1]
  end

  test "rotate list at index 0 returns input list" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 3, 4, 5], 0) == [1, 2, 3, 4, 5]
  end

  test "rotate list at index minus 1 works" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 3, 4, 5], -1) == [5, 1, 2, 3, 4]
  end

  test "rotate list at index minus 6 works" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 3, 4, 5], -6) == [5, 1, 2, 3, 4]
  end

  test "rotate list at index 3 works" do
    assert Elixir99Problems.ListRotator.rotate([1, 2, 3, 4, 5], 3) == [4, 5, 1, 2, 3]
  end

  test "rotate on single item list works" do
    assert Elixir99Problems.ListRotator.rotate([1], 3) == [1]
  end

  test "rotate on empty item list works" do
    assert Elixir99Problems.ListRotator.rotate([], 3) == []
  end

  test "rotate list with strings works" do
    assert Elixir99Problems.ListRotator.rotate(["1", "2", "3", "4"], 1) == ["2", "3", "4", "1"]
  end

end

