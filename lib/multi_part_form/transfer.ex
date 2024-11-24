defmodule MultiPartForm.Transfer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "transfers" do
    field :datetime, :utc_datetime
    field :item_name, :string
    field :item_quantity, :decimal
    belongs_to :origin, MultiPartForm.Address, type: Ecto.UUID
    belongs_to :destination, MultiPartForm.Address, type: Ecto.UUID

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(transfer, attrs \\ %{}) do
    transfer
    |> cast(attrs, [:datetime, :item_name, :item_quantity])
    |> validate_required([:datetime, :item_name, :item_quantity])
  end
end
