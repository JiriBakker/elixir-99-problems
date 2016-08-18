defmodule Elixir99Problems.ItemInserter do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p21.html
  
  defp insertAtRec(           [],     _, item, outputList),                 do: Enum.reverse([item | outputList])
  defp insertAtRec(    inputList, index, item, outputList) when index <= 1, do: Enum.reverse([item | outputList]) ++ inputList
  defp insertAtRec([head | tail], index, item, outputList),                 do: insertAtRec(tail, (index - 1), item, [head | outputList])

  def insertAt(inputList, index, item), do: insertAtRec(inputList, index, item, [])  

end
