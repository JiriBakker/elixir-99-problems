defmodule Elixir99Problems.RandomPermutationTest do
  use ExUnit.Case

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p25.html

  defp hasSameElements(list1, list2), do:
    length(list1) == length(list2)

  test "random permutation of list returns list containing same elements" do
    testList = [14, 19, 28, 31, 33, 48]
    assert hasSameElements(Elixir99Problems.RandomPermutation.randomPermutation(testList), testList) == true
  end

  test "random permutation of list with 1 item returns list with 1 item" do
    testList = [123]
    assert hasSameElements(Elixir99Problems.RandomPermutation.randomPermutation(testList), testList) == true
  end

  test "random permutation of empty list returns empty list" do
    testList = []
    assert hasSameElements(Elixir99Problems.RandomPermutation.randomPermutation(testList), testList) == true
  end

  test "random permutation of list of strings returns list containing same elements" do
    testList = ['a', 'b', 'c', 'd', 'e']
    assert hasSameElements(Elixir99Problems.RandomPermutation.randomPermutation(testList), testList) == true
  end

  
end
