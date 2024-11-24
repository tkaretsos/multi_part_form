defmodule MultiPartForm.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :street, :string
      add :postal_code, :string
      add :city, :string
    end
  end
end
