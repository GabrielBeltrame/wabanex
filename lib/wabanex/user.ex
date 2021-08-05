defmodule Wabanex.User do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:email, :password, :name]

  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{} #mesma coisa do que escrever %Wabanex.User{}
    |> cast(params, @fields) # estou fazendo o casting mapeando para os campos do fields
  end
end
