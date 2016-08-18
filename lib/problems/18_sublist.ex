defmodule Elixir99Problems.Sublist do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p18.html
  
  defp sublistRec(            _,      1,      0, outputList), do: Enum.reverse(outputList)
  defp sublistRec([head | tail],      1, index2, outputList), do: sublistRec(tail,            1, (index2 - 1), [head | outputList])
  defp sublistRec([head | tail], index1, index2,          _), do: sublistRec(tail, (index1 - 1), (index2 - 1),                  [])

  def sublist(inputList, index1, index2), do: sublistRec(inputList, index1, index2, [])  

end
