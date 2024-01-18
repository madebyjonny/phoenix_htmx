defmodule PhxHtmxWeb.PageController do
  use PhxHtmxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def form(conn, %{"name" => name}) do
    render(conn, "form.html", name: name, layout: false)
  end
end
