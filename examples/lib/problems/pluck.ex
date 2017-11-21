defmodule Pluck do
  
  @doc """
  Test this file with the command:
    "mix test test/pluck_test.js"

  Using < Enum.map > write a function
  that accepts an array and a string representing 
  a property name and return an array containing 
  that property from each object. 
  
  For Example:
    Input: [%{color: "red"}, %{color: "blue"}], "color"
    Output: ["red", "blue"]
  """

  @spec standard(array :: [map()], property: atom()) :: List
  def standard(array, property) do
    #TODO:
  end

  @spec curried(property: atom()) :: [...]
  def curried(property) do
    #TODO:
  end

end
