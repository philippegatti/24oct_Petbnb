class Dogsitter < ApplicationRecord
	has_many :strolls
	has_many :join_dog_strolls, through: :strolls
	has_many :dogs, through: :join_dog_strolls
end
