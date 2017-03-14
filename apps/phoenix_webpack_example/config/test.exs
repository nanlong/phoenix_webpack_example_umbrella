use Mix.Config

# Configure your database
config :phoenix_webpack_example, PhoenixWebpackExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_webpack_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
