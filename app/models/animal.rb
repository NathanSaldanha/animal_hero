class Animal < ApplicationRecord
  belongs_to :ong

  def self.get_animais(params)
    if (params.keys.include?('animal'))
      if params[:animal][:nome].present?
        Animal.where("nome like '%#{params[:animal][:nome]}%'")
      end  
    else
      Animal.all    
    end
  end  
end
