defmodule ElixirPopularity.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: ElixirPopularity.Worker.start_link(arg)
      # {ElixirPopularity.Worker, arg}
      :hackney_pool.child_spec(:hn_id_pool, timeout: 15000, max_connections: 100),
      ElixirPopularity.Repo,
      %{
        id: ElixirPopularity.RMQPublisher,
        start: {ElixirPopularity.RMQPublisher, :start_link, []}
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one]
    Supervisor.start_link(children, opts)
  end
end