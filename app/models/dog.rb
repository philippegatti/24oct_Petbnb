class Dog < ApplicationRecord
	has_many :strolls
	has_many :dogsitters, through: :strolls # le lien avec les dogsitters est fait via stroll
end
