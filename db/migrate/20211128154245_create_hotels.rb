class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
