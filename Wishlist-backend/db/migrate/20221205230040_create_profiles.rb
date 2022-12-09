class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :image

      t.timestamps
    end
  end
end
