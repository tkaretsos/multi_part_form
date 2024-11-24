defmodule MultiPartForm.Repo.Migrations.CreateEstablishments do
  use Ecto.Migration

  def change do
    create table(:establishments, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :street, :string
      add :number, :string
      add :postal_code, :string
      add :city, :string

      timestamps(type: :utc_datetime)
    end
  end
end
