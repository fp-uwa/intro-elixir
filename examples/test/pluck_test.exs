defmodule PluckTest do
  use ExUnit.Case

    setup do
        pillows = [
            %{ color: "red", shape: "circle" }, 
            %{ color: "blue", shape: "square" }
        ]
        animals = [
            %{ color: "brown", type: "dog" },
            %{ color: "black", type: "cat" }
        ]
        %{pillows: pillows, animals: animals}
    end

    test "pluck colors via standard method", %{pillows: pillows} do
        assert Pluck.standard(pillows, :color) == ["red", "blue"]
    end

    test "pluck shapes via standard method", %{pillows: pillows} do
        assert Pluck.standard(pillows, :shape) == ["circle", "square"]
    end

    test "pluck non-existent attribute via standard method", %{pillows: pillows} do
        assert Pluck.standard(pillows, :other) == [nil, nil] || None || []
    end

    test "pluck colors via currying method", %{pillows: pillows, animals: animals} do
        pluckColors = Pluck.curried(:color)
        pillowColors = pluckColors.(pillows)
        assert pillowColors == ["red", "blue"]
        animalColors = pluckColors.(animals)
        assert animalColors == ["brown", "black"]
    end

    test "pluck shapes via currying method", %{pillows: pillows, animals: animals} do
        pluckShapes = Pluck.curried(:shape)
        pillowShapes = pluckShapes.(pillows)
        assert pillowShapes == ["circle", "square"]
        animalShapes = pluckShapes.(animals)
        assert animalShapes == [nil, nil] || None || []
    end

end