defmodule PhoenixWebpackExample.Application do
  @moduledoc """
  The PhoenixWebpackExample Application Service.

  The phoenix_webpack_example system business domain lives in this application.

  Exposes API to clients such as the `PhoenixWebpackExample.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      worker(PhoenixWebpackExample.Repo, []),
    ], strategy: :one_for_one, name: PhoenixWebpackExample.Supervisor)
  end
end
