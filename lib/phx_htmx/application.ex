defmodule PhxHtmx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhxHtmx.Repo,
      # Start the Telemetry supervisor
      PhxHtmxWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhxHtmx.PubSub},
      # Start the Endpoint (http/https)
      PhxHtmxWeb.Endpoint
      # Start a worker by calling: PhxHtmx.Worker.start_link(arg)
      # {PhxHtmx.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxHtmx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhxHtmxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
