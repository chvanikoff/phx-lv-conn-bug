defmodule DemoWeb.PageLiveTest do
  use DemoWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Index" do
    test "Renders HELO", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, Routes.page_index_path(conn, :index))

      assert html =~ "HELO"
    end

    test "Renders current URL", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.page_index_path(conn, :index))

      assert index_live
             |> element("#p1-link a", "page-1")
             |> render_click() =~
               "/page</p>"

      assert index_live
             |> element("#p2-link a", "page-2")
             |> render_click() =~
               "/page2</p>"
    end
  end
end
