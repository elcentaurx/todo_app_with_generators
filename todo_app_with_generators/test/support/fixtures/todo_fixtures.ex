defmodule TodoAppWithGenerators.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoAppWithGenerators.Todo` context.
  """

  @doc """
  Generate a todo_item.
  """
  def todo_item_fixture(attrs \\ %{}) do
    {:ok, todo_item} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> TodoAppWithGenerators.Todo.create_todo_item()

    todo_item
  end
end
