defmodule AdminAppWeb.PageController do
  use AdminAppWeb, :controller

  alias AdminAppWeb.Helpers

  def index(conn, _params) do
    conn
    |> redirect(
      to:
        dashboard_path(conn, :index, %{
          "from" => Helpers.date_days_before(30),
          "to" => Helpers.date_today()
        })
    )
  end
end
