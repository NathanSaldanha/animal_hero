class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :species, default: 0
      t.date :birth_date
      t.references :ong, foreign_key: true

      t.timestamps
    end
  end
end
