class Trans < ApplicationRecord
    has_and_belongs_to_many :contracts
end
