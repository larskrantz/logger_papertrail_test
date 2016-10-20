defmodule LoggerPapertrailTest do
  require Logger

  def test do
    :ok = Logger.info("Info-logging")
    :ok = Logger.warn("Warn-logging")
    :ok = Logger.error("Error-logging")
    url = Application.get_env(:logger, :logger_papertrail_backend) |> Dict.get(:url)
    system_name = url |> String.split("/") |> List.last
    IO.puts("Goto https://papertrailapp.com/systems/#{system_name}/events to check that warn and error-message is there (not the info-message due to level-config).")
  end
end
