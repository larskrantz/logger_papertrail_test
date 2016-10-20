use Mix.Config

# Set PAPERTRAIL_URL to for example papertrail://logs.papertrailapp.com:YOUR-PAPERTRAIL-PORT/testing
config :logger, :logger_papertrail_backend,
    url: System.get_env("PAPERTRAIL_URL"),
    level: :warn,
    format: "$metadata $message"

config :logger,
    backends: [ :console,
      LoggerPapertrailBackend.Logger
    ],
    level: :debug
