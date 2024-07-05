defmodule CashierFunctionTest do
  use ExUnit.Case
  doctest CashierFunction

  test "greets the world" do
    assert CashierFunction.hello() == :world
  end
end
