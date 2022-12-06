class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.belongs_to :profile, foregin_key: true
      t.belongs_to :gift, foregin_key: true 

      t.timestamps
    end
  end
end
