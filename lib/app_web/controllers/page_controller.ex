defmodule AppWeb.PageController do
  use AppWeb, :controller

  def index(conn, _params) do
    #    render(conn, "index.html")
    len = 1024
    str = :crypto.strong_rand_bytes(len) |> Base.encode64 |> binary_part(0, len)
    text conn, str
  end
end
