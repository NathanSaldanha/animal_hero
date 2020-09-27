class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null:false, default: ''
      t.string :name, null:false, default:''
      t.string :password_digest, null:false ,defaut:''

      t.timestamps
    end
  end
end
