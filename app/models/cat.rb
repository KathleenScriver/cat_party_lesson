class Cat < ApplicationRecord
    has_many :cat_parties
    has_many :parties, through: :cat_parties
end
