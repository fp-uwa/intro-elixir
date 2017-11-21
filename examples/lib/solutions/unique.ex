defmodule UniqueSolution do
  
  @doc """
  Using < Enum.reduce > write a function 
  called 'unique' that will remove all the duplicate 
  values from an array.

  For Example:
    Input: [1, 1, 2, 3, 4, 4]
    Output: [1, 2, 3, 4]
  """

  @spec standard(array :: List) :: List
  def standard(array) do
    Enum.reduce(array, [], fn (x, acc) -> 
      if (x not in acc), do: [ x | acc ], else: acc
    end)
  end

end