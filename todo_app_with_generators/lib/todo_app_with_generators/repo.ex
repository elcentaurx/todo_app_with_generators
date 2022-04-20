defmodule TodoAppWithGenerators.Repo do
  use Ecto.Repo,
    otp_app: :todo_app_with_generators,
    adapter: Ecto.Adapters.Postgres
end
