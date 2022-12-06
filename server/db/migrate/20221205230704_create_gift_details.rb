class CreateGiftDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :gift_details do |t|
      t.string :detail
      t.belongs_to :gift, foregin_key: true

      t.timestamps
    end
  end
end
