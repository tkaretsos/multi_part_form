defmodule MultiPartForm.Establishment do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "establishments" do
    field :name, :string
    field :number, :string
    field :street, :string
    field :postal_code, :string
    field :city, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(establishment, attrs) do
    establishment
    |> cast(attrs, [:name, :street, :number, :postal_code, :city])
    |> validate_required([:name, :street, :number, :postal_code, :city])
  end
end
