defmodule Elixir99Problems.ItemInserterTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p21.html

  test "insert at index 2 works" do
    assert Elixir99Problems.ItemInserter.insertAt([1, 2, 5, 5, 2, 1], 2, 99) == [1, 99, 2, 5, 5, 2, 1] 
  end

  test "insert at index 3 works" do
    assert Elixir99Problems.ItemInserter.insertAt(Enum.to_list 1..14, 3, 99) == [1, 2, 99, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  end

  test "insert at index higher than list length appends item to list" do
    assert Elixir99Problems.ItemInserter.insertAt([1, 2, 3, 4, 5], 7, 99) == [1, 2, 3, 4, 5, 99]
  end

  test "insert at index 0 prepents item to list" do
    assert Elixir99Problems.ItemInserter.insertAt([1, 2, 3, 4, 5], 0, 99) == [1, 2, 3, 4, 5, 99]
  end

  test "insert at index minus 1 prepends item to list" do
    assert Elixir99Problems.ItemInserter.insertAt([1, 2, 3, 4, 5], -1, 99) == [99, 1, 2, 3, 4, 5]
  end

  test "insert at index 1 prepends item to list" do
    assert Elixir99Problems.ItemInserter.insertAt([1, 2, 3, 4, 5], 1, 99) == [99, 1, 2, 3, 4, 5]
  end

  test "insert at on empty list works" do
    assert Elixir99Problems.ItemInserter.insertAt([], 1, 99) == [99]
  end

  test "insert at index 2 on list with strings works" do
    assert Elixir99Problems.ItemInserter.insertAt(["1", "2", "3", "4", "5"], 2) == ["1", "3", "4", "5"]
  end

end

