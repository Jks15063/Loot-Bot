defmodule LootBootWeb.PageController do
  use LootBootWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
