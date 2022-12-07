class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
