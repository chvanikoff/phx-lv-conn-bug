defmodule DemoWeb.PageLive.Index do
  @moduledoc false

  use DemoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket = assign(socket, :url, "undefined")
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <h1>HELO</h1>
    <p id="p1-link"><%= live_patch("page-1", to: Routes.page_index_path(@socket, :index)) %></p>
    <p id="p2-link"><%= live_patch("page-2", to: Routes.page_index_path(@socket, :second)) %></p>
    <p>Current URL: <%= @url %></p>
    """
  end

  @impl true
  def handle_params(_params, url, socket) do
    socket = assign(socket, :url, url)
    {:noreply, socket}
  end
end
