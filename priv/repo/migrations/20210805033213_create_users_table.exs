defmodule Wabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :name, :string
      add :password, :string

      timestamps() # vai adicionar duas colunas de creiado e atulizado com uma data
    end

    create unique_index(:users, [:email])

    # estudar up e down para saber o processo de criação e exclusão de tabelas
  end
end
