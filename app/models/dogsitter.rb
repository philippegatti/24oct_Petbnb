class Dogsitter < ApplicationRecord
	has_many :strolls
	has_many :dogs, through: :strolls # le lien avec les chiens est fait via stroll
end
