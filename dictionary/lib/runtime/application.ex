defmodule Dictionary.Runtime.Application do

  use Application

  def start(_type, _args) do
    children = [
      { Dictionary.Runtime.Server, [] },
    ]
    options = [
      name: Dictionary.Runtime.Supervisor,
      strategy: :one_for_one,
      max_restarts: 3,
      max_seconds: 10,
    ]

    Supervisor.start_link(children, options)
  end
end
