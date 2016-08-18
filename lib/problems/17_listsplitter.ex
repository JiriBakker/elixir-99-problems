defmodule Elixir99Problems.ListSplitter do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p17.html

  defp splitRec(list1,            [], _),                    do: { Enum.reverse(list1), [] }
  defp splitRec(list1,         list2, index) when index < 1, do: { Enum.reverse(list1), list2 }
  defp splitRec(list1, [head | tail], index),                do: splitRec([head | list1], tail, (index - 1))

  def split(inputList, index) do    
      splitRec([], inputList, index)
  end

end
