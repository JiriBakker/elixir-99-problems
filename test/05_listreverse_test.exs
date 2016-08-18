defmodule Elixir99Problems.ListReverseTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p05.html

  test "list of 1 to 4 is reversed to 4 to 1" do
    assert Elixir99Problems.ListReverse.myReverse([1, 2, 3, 4]) == [4, 3, 2, 1]
  end

  test "list of 1 to 2 is reversed to 2 to 1" do
    assert Elixir99Problems.ListReverse.myReverse([1, 2]) == [2, 1]
  end

  test "list of 1 is reversed to 1" do
    assert Elixir99Problems.ListReverse.myReverse([1]) == [1]
  end

  test "empty list is reversed to empty list" do
    assert Elixir99Problems.ListReverse.myReverse([]) == []
  end

  test "list of a to c is reversed to c to a" do
    assert Elixir99Problems.ListReverse.myReverse(['a', 'b', 'c']) == ['c', 'b', 'a']
  end

end
