defmodule UselessTest do
  use ExUnit.Case
  doctest Useless

  test "greets the world" do
    assert Useless.hello() == :world
  end
end
