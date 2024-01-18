defmodule PhxHtmxWeb.PageController do
  use PhxHtmxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def form(conn, %{"name" => name}) do


    conn
    |> put_root_layout(false)
    |> render("form.html", name: name)
  end
end
