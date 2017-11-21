defmodule Match do

  @doc """
    Test this file with the command:
      "mix test test/match_test.js"

    Use < Enum.filter > to write a function 
    that takes a list of objects and finds all objects
    that match a given property.

    For Example:
      Input: 
        [ { id: 1, height: 20 },
          { id: 2, height: 25 },
          { id: 3, height: 20 } ], 
        { height: 20 }
      Output: 
        [ {id: 1, height: 20}, 
          {id: 3, height: 20} ]
  """

  @spec standard(array :: list(map), key :: any, value :: any) :: list(map)
  def standard(array, key, value) do 
      #TODO:
  end 

  @spec curried(key :: any) :: list(map)
  def curried(key) do
    #TODO:
  end
end