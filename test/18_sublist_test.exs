defmodule Elixir99Problems.SublistTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p18.html

  test "sublist with first and last of list returns entire list" do
    assert Elixir99Problems.Sublist.sublist([1, 2, 3, 4, 5], 1, 5) == [1, 2, 3, 4, 5]
  end

  test "sublist with 2 and 4 returns 2 to 4" do
    assert Elixir99Problems.Sublist.sublist([1, 2, 3, 4, 5], 2, 4) == [2, 3, 4]
  end

  test "sublist with 1 and 3 returns 1 to 3" do
    assert Elixir99Problems.Sublist.sublist([1, 2, 3, 4, 5], 1, 3) == [1, 2, 3]
  end

  test "sublist with 2 and last of list returns 2 to last of list" do
    assert Elixir99Problems.Sublist.sublist([1, 2, 3, 4, 5], 2, 5) == [2, 3, 4, 5]
  end

end
