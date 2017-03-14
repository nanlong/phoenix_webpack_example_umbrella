use Mix.Config

config :phoenix_webpack_example, ecto_repos: [PhoenixWebpackExample.Repo]

import_config "#{Mix.env}.exs"
