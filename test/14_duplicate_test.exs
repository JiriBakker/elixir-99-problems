defmodule Elixir99Problems.DuplicateTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p14.html

  test "duplicate list of 6 items returns duplicated list with 12 items" do
    assert Elixir99Problems.Duplicate.duplicate([1, 2, 3, 5, 8, 8]) == [1, 1, 2, 2, 3, 3, 5, 5, 8, 8, 8, 8]
  end

  test "duplicate of list with 1 item returns duplicated list with 2 items" do
    assert Elixir99Problems.Duplicate.duplicate([1]) == [1, 1]
  end

  test "duplicate of empty list returns empty list" do
    assert Elixir99Problems.Duplicate.duplicate([]) == []
  end

  test "duplicate list of 3 strings returns duplicated list with 6 strings" do
    assert Elixir99Problems.Duplicate.duplicate(["1", "2", "5"]) == ["1", "1", "2", "2", "5", "5"]
  end

end