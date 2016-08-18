defmodule Elixir99Problems.ItemRemoverTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p20.html

  test "drop at index 2 works" do
    assert Elixir99Problems.ItemRemover.dropAt([1, 2, 5, 5, 2, 1], 2) == [1, 5, 5, 2, 1]
  end

  test "drop at index 3 works" do
    assert Elixir99Problems.ItemRemover.dropAt(Enum.to_list(1..14), 3) == [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  end

  test "drop at index higher than list returns input list" do
    assert Elixir99Problems.ItemRemover.dropAt([1, 2, 3, 4, 5], 6) == [1, 2, 3, 4, 5]
  end

  test "drop at index 0 returns input list" do
    assert Elixir99Problems.ItemRemover.dropAt([1, 2, 3, 4, 5], 0) == [1, 2, 3, 4, 5]
  end

  test "drop at index minus 1 returns input list" do
    assert Elixir99Problems.ItemRemover.dropAt([1, 2, 3, 4, 5], -1) == [1, 2, 3, 4, 5]
  end

  test "drop at index 1 works" do
    assert Elixir99Problems.ItemRemover.dropAt([1, 2, 3, 4, 5], 1) == [2, 3, 4, 5]
  end

  test "drop at on single item list works" do
    assert Elixir99Problems.ItemRemover.dropAt([1], 1) == []
  end

  test "drop at index 2 on list with strings works" do
    assert Elixir99Problems.ItemRemover.dropAt(["1", "2", "3", "4", "5"], 2) == ["1", "3", "4", "5"]
  end

end



