defmodule ServyTest do
  use ExUnit.Case
  doctest Servy

  test "greets the world with a name" do
    assert Servy.hello("gustavo") == "Hello, gustavo"
  end
end
