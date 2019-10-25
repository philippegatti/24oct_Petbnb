class City < ApplicationRecord
	has_many :dogs
	has_many :dogsitters
	has_many :strolls, through: :dogsitters
end
