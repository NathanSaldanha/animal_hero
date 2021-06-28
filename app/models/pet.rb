class Pet < ApplicationRecord
  belongs_to :ong
  has_one_attached :avatar
  
  enum species: { cachorro:1, gato:3, coelho:5, calopsyta:7 }
end
