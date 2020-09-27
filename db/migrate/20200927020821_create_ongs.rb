class CreateOngs < ActiveRecord::Migration[5.2]
  def change
    create_table :ongs do |t|
      t.string :nome
      t.string :email
      t.string :estado
      t.string :logo

      t.timestamps
    end
  end
end
