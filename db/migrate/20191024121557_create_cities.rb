class CreateCities < ActiveRecord::Migration[5.2]
  def change # seul le nom de la ville est crée comme variable
    create_table :cities do |t|
      t.string :city_name

      t.timestamps
    end
  end
end
