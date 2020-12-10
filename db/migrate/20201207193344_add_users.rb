class AddUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference  :users, :ongs_id , foreign_key: true
  end
end
