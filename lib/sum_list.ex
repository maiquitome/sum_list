defmodule SumList do
  @moduledoc """
  Documentation for `SumList`.
  """

  @spec call(list) :: number
  @doc """
  Sum a list of numbers.

  ## Examples

      iex> SumList.call([1, 2, 3])
      6
      iex> SumList.call([1, 2, 3, 4])
      10
      iex> SumList.call([])
      0

      iex> SumList.call(%{})
      "Please, put a number list. e.g: [1, 2, 3]"
      iex> SumList.call(:test)
      "Please, put a number list. e.g: [1, 2, 3]"
      iex> SumList.call("test")
      "Please, put a number list. e.g: [1, 2, 3]"

  """
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head

    sum(tail, acc)
  end

  defp sum(_any, _acc) do
    "please, put a number list. e.g: [1, 2, 3]"
  end

  # sum([1, 2, 3], 0)
  # acc = 1
  # tail = [2, 3]

  # sum([2, 3], 1)
  # acc = 3
  # tail = [3]

  # sum([3], 3)
  # acc = 6
  # tail = []

  # sum([], 6)
  # acc = 6
end
