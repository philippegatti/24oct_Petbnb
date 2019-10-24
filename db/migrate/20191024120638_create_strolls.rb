class CreateStrolls < ActiveRecord::Migration[5.2]
  def change # outre une date qui lui est propre, la stroll a comme variable un chien et un dogsitter
    create_table :strolls do |t|
      t.datetime :date
      t.belongs_to :dog, index: true
      t.belongs_to :dogsitter, index: true
      t.timestamps
    end
  end
end
