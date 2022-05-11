defmodule DemoWeb.PageLiveTest do
  use DemoWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Index" do
    test "Renders HELO", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, Routes.page_index_path(conn, :index))

      assert html =~ "HELO"
    end
  end
end
