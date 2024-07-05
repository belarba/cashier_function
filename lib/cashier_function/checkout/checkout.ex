defmodule CashierFunction.Checkout do
  @moduledoc """
  Module to calculate the total price of a basket of items
  """

  import PricingCalculator.PricingRules, only: [calculate_price: 2]

  def total_price(items) do
    items
    |> Enum.frequencies()
    |> Enum.reduce(0, fn {code, quantity}, acc ->
      acc + calculate_price(code, quantity)
    end)
    |> Float.round(2)
  end
end
