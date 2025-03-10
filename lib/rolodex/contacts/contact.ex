defmodule Rolodex.Contacts.Contact do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contacts" do
    field :name, :string
    field :email, :string
    field :favorite, :boolean, default: false
    field :notes, :string
    field :title, :string
    field :birthday, :date

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, [:name, :email, :favorite, :notes, :title, :birthday])
    |> validate_required([:name])
  end
end
