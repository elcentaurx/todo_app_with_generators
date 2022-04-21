defmodule TodoAppWithGenerators.Todo.TodoItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todo_items" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(todo_item, attrs) do
    todo_item
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
