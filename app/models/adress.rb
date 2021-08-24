class Adress < ApplicationRecord
    belongs_to :contract

    validates :city, :street, :house, :home, :contract_id, :presence => true 
    validates :city, :format => {with: /\A[а-яА-ЯёЁa-zA-Z]+\z/, message: "Только буквы" }
    validates :house, :home, :street, :format => {with: /\A[а-яА-ЯёЁa-zA-Z0-9]+\z/, message: "Только буквы или цифры"}
end
