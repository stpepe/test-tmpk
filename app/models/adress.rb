class Adress < ApplicationRecord
    belongs_to :contract

    validates :city, :street, :house, :home, :presence => true 
    validates :city, :street, :format => {with: /\A[а-яА-ЯёЁa-zA-Z]+\z/, message: "Только буквы" }
    validates :house, :home, :format => {with: /\A[а-яА-ЯёЁa-zA-Z0-9]+\z/, message: "Только буквы или цифры"}
end
