defmodule MultiPartForm.Repo.Migrations.CreateTransfers do
  use Ecto.Migration

  def change do
    create table(:transfers, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :datetime, :utc_datetime
      add :item_name, :string
      add :item_quantity, :decimal
      add :origin_id, references(:establishments, on_delete: :nothing, type: :binary_id)
      add :destination_id, references(:establishments, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:transfers, [:origin_id])
    create index(:transfers, [:destination_id])
  end
end
