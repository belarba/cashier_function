# Cashier Function

## Overview

This Elixir module provides functionality to calculate the total price of a basket of items, incorporating special pricing rules for different products. It supports flexible pricing rules that can be adjusted based on business requirements.

## Features

- Calculate the total price of a basket of items.
- Apply special pricing rules for specific products:
  - **"GR1"** (Green tea): Buy one, get one free.
  - **"SR1"** (Strawberries): Bulk discount for 3 or more.
  - **"CF1"** (Coffee): Discount for buying 3 or more.
- Handle unknown product codes gracefully with error handling.

## Installation

To use `CashierFunction` in your Elixir project, follow these steps:

1. Ensure Elixir is installed on your system. If not, follow the [installation instructions](https://elixir-lang.org/install.html).
2. Add `CashierFunction` as a dependency in your `mix.exs` file:

   ```elixir
   defp deps do
     [
       {:cashier_function, "~> 1.0.0"}
     ]
   end
   ```

3. Run mix deps.get to fetch the dependency.

## Usage

    ```elixir
    items = ["GR1", "SR1", "GR1", "CF1", "CF1"]
    total_price = CashierFunction.Checkout.total_price(items)
    IO.puts "Total price: £#{total_price}"

    ```
### Explanation
items: A list of product codes representing the basket of items.
total_price(items): Calculates the total price based on the quantities and special pricing rules defined for each product.

### Special Pricing Rules

#### "GR1" (Green tea)

- Buy one, get one free.

#### "SR1" (Strawberries)

- £4.50 per strawberry if 3 or more are bought.

#### "CF1" (Coffee)

- Two-thirds of the original price if 3 or more are bought.

## Running Tests

To run tests for `CashierFunction`, follow these steps:

1. Make sure you have Elixir installed on your system. If not, follow the [installation instructions](https://elixir-lang.org/install.html).
2. Clone the repository from GitHub:

   ```sh
   git clone https://github.com/seu-usuario/cashier_function.git
   cd cashier_function
   ```
3. Install dependencies with ```mix deps.get```.
4. Run tests with ```mix test```.

