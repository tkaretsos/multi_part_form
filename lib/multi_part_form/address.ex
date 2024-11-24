defmodule MultiPartForm.Address do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "addresses" do
    field :street, :string
    field :postal_code, :string
    field :city, :string
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:street, :postal_code, :city])
    |> validate_required([:street, :postal_code, :city])
  end
end
