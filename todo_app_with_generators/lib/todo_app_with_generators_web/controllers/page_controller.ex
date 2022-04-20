defmodule TodoAppWithGeneratorsWeb.PageController do
  use TodoAppWithGeneratorsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
