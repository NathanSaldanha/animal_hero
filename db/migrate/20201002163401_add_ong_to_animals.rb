class AddOngToAnimals < ActiveRecord::Migration[5.2]
    def change
      add_reference :animals, :ong, foreign_key: true
    end
  end