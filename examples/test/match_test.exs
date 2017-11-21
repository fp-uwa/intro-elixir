defmodule MatchTest do
  use ExUnit.Case

    setup do
        pillows = [
            %{ color: "red", shape: "circle" }, 
            %{ color: "blue", shape: "square" }
        ]
        %{pillows: pillows}
    end

    test "match existing attribute via standard method", %{pillows: pillows} do
        assert Match.standard(pillows, :color, "red") == [%{ color: "red", shape: "circle" }]
        assert Match.standard(pillows, :shape, "square") == [%{ color: "blue", shape: "square" }]
    end

    test "match non-existent attribute via standard method", %{pillows: pillows} do
        assert Match.standard(pillows, :color, "green") == [nil, nil] || None || []
        assert Match.standard(pillows, :lining, true) == [nil, nil] || None || []
    end

    test "match existing attribute via currying method", %{pillows: pillows} do
        hasColor = Match.curried(:color)
        assert Enum.filter(pillows, hasColor.("red")) == [%{ color: "red", shape: "circle" }]
        hasShape = Match.curried(:shape)
        assert Enum.filter(pillows, hasShape.("square")) == [%{ color: "blue", shape: "square" }]
    end

    test "match non-existent attribute via currying method", %{pillows: pillows} do
        hasColor = Match.curried(:color)
        assert Enum.filter(pillows, hasColor.("green")) == [nil, nil] || None || []
        hasLining = Match.curried(:shape)
        assert Enum.filter(pillows, hasLining.(true)) == [nil, nil] || None || []
    end

end