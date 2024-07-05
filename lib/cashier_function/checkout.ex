defmodule CashierFunction.Checkout do
  @moduledoc """
  Module to calculate the total price of a basket of items
  """

  @prices %{"GR1" => 3.11, "SR1" => 5.00, "CF1" => 11.23}

  def total_price(items) do
    items
    |> Enum.frequencies()
    |> Enum.reduce(0, fn {code, quantity}, acc ->
      acc + calculate_price(code, quantity)
    end)
    |> Float.round(2)
  end

  defp calculate_price("SR1", quantity) when quantity >= 3 do
    4.50 * quantity
  end

  defp calculate_price("CF1", quantity) when quantity >= 3 do
    (@prices["CF1"] * 2 / 3) * quantity
  end

  defp calculate_price(code, quantity) do
    @prices[code] * quantity
  end
end
