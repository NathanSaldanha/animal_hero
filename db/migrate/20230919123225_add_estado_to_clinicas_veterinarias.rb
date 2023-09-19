class AddEstadoToClinicasVeterinarias < ActiveRecord::Migration[5.2]
  def change
    add_reference :clinicas_veterinarias, :estado, foreign_key: true
  end
end
