defmodule Elixir99Problems.PalindromesTest do
  use ExUnit.Case

  #doctest Elixir99Problems.Palindromes

  test "palindrome of integers is recognized" do
    assert Elixir99Problems.Palindromes.isPalindrome([1, 3, 5, 8, 5, 3, 1]) == :true
  end

  test "non palindrome of integers is not recognized as palindrome" do
    assert Elixir99Problems.Palindromes.isPalindrome([1, 2]) == :false
  end

  test "palindrome of single integer is recognized" do
    assert Elixir99Problems.Palindromes.isPalindrome([1]) == :true
  end

  test "empty list is recognized as palindrome" do
    assert Elixir99Problems.Palindromes.isPalindrome([]) == :true
  end

  test "palindrome of strings is recognized" do
    assert Elixir99Problems.Palindromes.isPalindrome(["aa", "bb", "aa"]) == :true
  end

  test "non palindrome of strings is not recognized as palindrome" do
    assert Elixir99Problems.Palindromes.isPalindrome(["aac", "b", "aa"]) == :false
  end
end
