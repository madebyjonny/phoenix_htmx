defmodule PhxHtmx.Repo do
  use Ecto.Repo,
    otp_app: :phx_htmx,
    adapter: Ecto.Adapters.Postgres
end
