defmodule BunnyTest do
  use ExUnit.Case
  doctest Bunny

  test "greets the world" do
    assert Bunny.hello() == :world
  end
end
