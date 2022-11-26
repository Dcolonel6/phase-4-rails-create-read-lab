class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :image
      t.decimal :price
      t.string :name

      t.timestamps
    end
  end
end
