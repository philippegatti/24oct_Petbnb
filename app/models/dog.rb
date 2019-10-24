class Dog < ApplicationRecord
	has_many :strolls, through: :join_dog_stroll
end
