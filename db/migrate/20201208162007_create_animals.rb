class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :img_url
      t.string :situation
      t.timestamps
    end
  end
end
