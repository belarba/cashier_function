defmodule PricingCalculator.PricingRules do
  @moduledoc """
  Module containing various pricing rules.
  """

  @prices %{"GR1" => 3.11, "SR1" => 5.00, "CF1" => 11.23}

  def calculate_price(code, quantity) do
    case special_price(code, quantity) do
      nil -> normal_price(code, quantity)
      price -> price
    end
  end

  defp special_price("GR1", quantity) do
    base_price = @prices["GR1"]
    effective_quantity = if rem(quantity, 2) == 0 do
      div(quantity, 2)
    else
      div(quantity, 2) + 1
    end

    effective_quantity * base_price
  end

  defp special_price("SR1", quantity) when quantity >= 3 do
    4.50 * quantity
  end

  defp special_price("CF1", quantity) when quantity >= 3 do
    (@prices["CF1"] * 2 / 3) * quantity
  end

  defp special_price(_code, _quantity), do: nil

  defp normal_price(code, quantity) do
    case Map.fetch(@prices, code) do
      {:ok, price} -> price * quantity
      :error -> raise ArgumentError, message: "Product code not found: #{code}"
    end
  end
end
