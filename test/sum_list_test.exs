defmodule SumListTest do
  use ExUnit.Case
  doctest SumList

  describe "call/1" do
    test "Returns the sum of a number list." do
      list = [1, 2, 3]

      response = SumList.call(list)

      expected_response = 6

      assert response == expected_response
    end
  end
end
