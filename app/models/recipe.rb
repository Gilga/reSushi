class Recipe < ApplicationRecord
	belongs_to :nutrition, :optional => true
	has_many :ingredient
end
