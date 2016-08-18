defmodule Elixir99Problems.ListLengthTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p04.html

  test "list of 4000 elements is counted as 4000" do
    assert Elixir99Problems.ListLength.countElements(Enum.to_list 1..4000) == 4000
  end

  test "list of 1 element is counted as 1" do
    assert Elixir99Problems.ListLength.countElements([1]) == 1
  end

  test "empty list is counted as 0" do
    assert Elixir99Problems.ListLength.countElements([]) == 0
  end

  test "list of 3 string element is counted as 3" do
    assert Elixir99Problems.ListLength.countElements(['a', 'b', 'c']) == 3
  end

end

