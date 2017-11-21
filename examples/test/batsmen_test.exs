defmodule BatsmenTest do
  use ExUnit.Case

    test "parse batsmen from file" do
        result = Batsmen.parse("assets/batsmen-data.txt")
        assert is_list(result) == true
        keys = Enum.map(result, fn x -> Map.from_struct(x) end) |> List.first |> Map.keys
        assert keys -- [:average, :initials, :surname, :total] == []
    end

end