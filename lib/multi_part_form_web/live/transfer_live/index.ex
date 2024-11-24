defmodule MultiPartFormWeb.TransferLive.Index do
  use MultiPartFormWeb, :live_view

  alias MultiPartForm.{Repo, Transfer}

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :transfers, get_transfers())}
  end

  defp get_transfers() do
    Transfer |> Repo.all() |> Repo.preload([:origin, :destination])
  end
end
