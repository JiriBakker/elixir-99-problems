defmodule Elixir99Problems.RandomPermutation do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p25.html
  
  defp randomPermutationRec([], outputList), do: outputList
  defp randomPermutationRec(inputList, outputList) do
    :rand.seed(:exsplus, :os.timestamp)
    randomIndex = round(:rand.uniform * length(inputList))
    item = inputList |> Enum.drop(randomIndex) |> Enum.take(1)
    inputListWithoutItem = 
        (inputList |> Enum.take(randomIndex)) 
        ++ (inputList |> Enum.drop(randomIndex + 1))
    randomPermutationRec(inputListWithoutItem, [item | outputList])
  end

  def randomPermutation(inputList), do: randomPermutationRec(inputList, [])

end
