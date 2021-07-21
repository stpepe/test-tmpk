class Contract < ApplicationRecord
    belongs_to :tarif
    has_one :adress
    has_and_belongs_to_many :transes
    has_one :cash
    
    validates :username, :usurname, :face, :presence => true, :format => {with: /\A[а-яА-ЯёЁa-zA-Z]+\z/, message: "Только буквы" }
    validates :tarif_id, :presence => true, :format => {with: /\A[0-9]+\z/, message: "Только цифры"}
end
