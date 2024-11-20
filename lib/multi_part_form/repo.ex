defmodule MultiPartForm.Repo do
  use Ecto.Repo,
    otp_app: :multi_part_form,
    adapter: Ecto.Adapters.SQLite3
end
