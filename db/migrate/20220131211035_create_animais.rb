class CreateAnimais < ActiveRecord::Migration[5.2]
  def change
    create_table :animais do |t|
      t.string :nome
      t.string :raca
      t.string :especie
      t.string :sexo
      t.integer :peso
      t.date :data_nascimento
      t.string :situacao
      t.references :ong, foreign_key: true

      t.timestamps
    end
  end
end
