defmodule CashierFunctionTest do
  use ExUnit.Case
  doctest CashierFunction

  test "Basket: GR1, SR1, GR1, GR1, CF1 - Total price expected: £22.45" do
    assert CahsierFunction.Checkout.total_price(["GR1", "SR1", "GR1", "GR1", "CF1"]) == 22.45
  end

  test "Basket: GR1, GR1 - Total price expected: £3.11" do
    assert CahsierFunction.Checkout.total_price(["GR1", "GR1"]) == 3.11
  end

  test "Basket: SR1, SR1, GR1, SR1 - Total price expected: £16.61" do
    assert CahsierFunction.Checkout.total_price(["SR1", "SR1", "GR1", "SR1"]) == 16.61
  end

  test "Basket: GR1, CF1, SR1, CF1, CF1 - Total price expected: £30.57" do
    assert CahsierFunction.Checkout.total_price(["GR1", "CF1", "SR1", "CF1", "CF1"]) == 30.57
  end
end
