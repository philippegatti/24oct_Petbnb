class AddCity < ActiveRecord::Migration[5.2]
  def change #insertion de la reference à la ville dans les bases dogs et dogsitters
  	add_reference :dogs, :city, foreign_key: true
	add_reference :dogsitters, :city, foreign_key: true
  end
end
