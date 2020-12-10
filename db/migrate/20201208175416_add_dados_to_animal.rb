class AddDadosToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :raca, :string
    add_column :animals, :especie, :string
    add_column :animals, :sexo, :string
    add_column :animals, :peso, :string
    add_column :animals, :data_nascimento, :string
    add_column :animals, :situacao, :string
  end
end
