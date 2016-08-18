defmodule Elixir99Problems.ItemRemover do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p20.html
  
  defp dropAtRec(           [],     _, outputList), do: Enum.reverse(outputList)
  defp dropAtRec([head | tail],     1, outputList), do: Enum.reverse(outputList) ++ tail
  defp dropAtRec([head | tail], index, outputList), do: dropAtRec(tail, (index - 1), [head | outputList])

  def dropAt(inputList, index), do: dropAtRec(inputList, index, [])  

end
