class Stroll < ApplicationRecord
	has_many :join_dog_strolls
	has_many :dogs, through: :join_dog_stroll
  	belongs_to :dogsitter
end
