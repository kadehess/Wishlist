class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.integer :rate
      t.belongs_to :profile, foregin_key: true
      t.belongs_to :gift, foregin_key: true

      t.timestamps
    end
  end
end
