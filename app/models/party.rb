class Party < ApplicationRecord
    has_many :cat_parties
    has_many :cats, through: :cat_parties
end
