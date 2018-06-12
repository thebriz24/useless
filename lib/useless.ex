defmodule Useless do
  @moduledoc """
    Application that doesn't do anything except start up a supervisor with no children. For the purpose of having an app that a testing runtime can start and stop with no consequences.
  """
  use Application

  def start(_type, _args) do
    Supervisor.start_link([], strategy: :one_for_one, name: Useless.Supervisor)
  end
end
