class CreateAnimals < ActiveRecord::Migration[5.2]
    def change
      create_table :animals do |t|
        t.string :nome
        t.string :raca
        t.string :especie
        t.string :sexo
        t.float :peso
        t.date :data_nascimento
        t.string :situacao
  
        t.timestamps
      end
    end
  end