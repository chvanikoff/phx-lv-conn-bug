defmodule DemoWeb.PageLive.Index do
  @moduledoc false

  use DemoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <h1>HELO</h1>
    """
  end
end
