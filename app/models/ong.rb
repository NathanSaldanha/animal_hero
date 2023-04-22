class Ong < ApplicationRecord
    validates :nome, :email, :estado, :logo, presence: true
end
