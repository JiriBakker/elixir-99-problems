defmodule Elixir99Problems.Palindromes do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p06.html

  defp isPalindromeRec([], []), do: :true
  defp isPalindromeRec([h | t], [hRev | tRev]) when h == hRev do    
    isPalindromeRec(t, tRev)        
  end
  defp isPalindromeRec(_, _), do: :false

  def isPalindrome(inputList) do    
      isPalindromeRec(inputList, Enum.reverse(inputList))
  end

end
