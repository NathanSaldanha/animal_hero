class AddOngToUsers < ActiveRecord::Migration[5.2]
    def change
      add_reference :users, :ong, foreign_key: true
    end
  end