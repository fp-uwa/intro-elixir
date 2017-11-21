defmodule UniqueTest do
  use ExUnit.Case

    test "unique from empty array" do
        assert Unique.standard([]) -- [] == []
    end

    test "unique from solitary array" do
        assert Unique.standard([1]) -- [1] == []
    end

    test "unique from ascending non-duplicates array" do
        assert Unique.standard([1, 2, 3, 4, 5]) -- [1, 2, 3, 4, 5] == []
    end

    test "unique from descending non-duplicate array" do
        assert Unique.standard([5, 4, 3, 2, 1]) -- [5, 4, 3, 2, 1] == []
    end

    test "unique from ascending duplicate array" do
        assert Unique.standard([1, 2, 3, 3, 3, 4, 5, 5]) -- [1, 2, 3, 4, 5] == []
    end

    test "unique from descending duplicate array" do
        assert Unique.standard([5, 4, 4, 4, 3, 2, 2, 1]) -- [5, 4, 3, 2, 1] == []
    end

    test "unique from mixed duplicate array" do
        assert Unique.standard([5, 4, 1, 3, 4, 2, 2, 4]) -- [5, 4, 3, 2, 1] == []
    end

end