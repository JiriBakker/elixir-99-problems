defmodule Elixir99Problems.ListSplitterTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p17.html

  test "list split at index 0 returns an empty list and input list" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 0) == {[], [1, 2, 3, 4, 5]}
  end

  test "list split at index 2 returns list of 1 and 2 and list of 3 to 5" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 2) == {[1, 2], [3, 4, 5]}
  end

  test "list split at index 3 returns list of 1 to 3 and list of 4 and 5" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 3) == {[1, 2, 3], [4, 5]}
  end

  test "list split at index 4 returns list of 1 to 4 and list of 5" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 4) == {[1, 2, 3, 4], [5]}
  end

  test "list split at index 5 returns list of 1 to 5 and an empty list" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 5) == {[1, 2, 3, 4, 5], []}
  end

  test "list split at index 6 returns list of 1 to 5 and an empty list" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], 6) == {[1, 2, 3, 4, 5], []}
  end

  test "list split at index minus 1 returns an empty list and input list" do
    assert Elixir99Problems.ListSplitter.split([1, 2, 3, 4, 5], -1) == {[], [1, 2, 3, 4, 5]}
  end

  test "list with strings splits as expected" do
    assert Elixir99Problems.ListSplitter.split(["aab", "b", "c", "aa"], 2) == {["aab", "b"], ["c", "aa"]}
  end

end
