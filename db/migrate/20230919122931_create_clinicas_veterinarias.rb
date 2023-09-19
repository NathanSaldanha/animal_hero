class CreateClinicasVeterinarias < ActiveRecord::Migration[5.2]
  def change
    create_table :clinicas_veterinarias do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :endereco
      t.string :estado

      t.timestamps
    end
  end
end
