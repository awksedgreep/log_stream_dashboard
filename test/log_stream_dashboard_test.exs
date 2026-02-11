defmodule LogStreamDashboardTest do
  use ExUnit.Case

  test "page module implements PageBuilder callbacks" do
    assert function_exported?(LogStreamDashboard.Page, :menu_link, 2)
    assert function_exported?(LogStreamDashboard.Page, :render, 1)
    assert function_exported?(LogStreamDashboard.Page, :mount, 3)
    assert function_exported?(LogStreamDashboard.Page, :handle_params, 3)
    assert function_exported?(LogStreamDashboard.Page, :handle_event, 3)
    assert function_exported?(LogStreamDashboard.Page, :handle_info, 2)
  end

  test "menu_link returns ok with Logs label" do
    assert {:ok, "Logs"} = LogStreamDashboard.Page.menu_link(%{}, %{})
  end
end
