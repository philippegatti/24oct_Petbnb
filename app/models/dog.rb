class Dog < ApplicationRecord
	has_many :join_dog_strolls
	has_many :strolls, through: :join_dog_stroll
end
