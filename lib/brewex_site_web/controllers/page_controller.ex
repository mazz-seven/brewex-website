defmodule BrewexSiteWeb.PageController do
  use BrewexSiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
    # live_render(conn, BrewexSiteWeb.HomeLive.Index, session: %{})
  end
end
