class CreateBlacklistedManufacturers < ActiveRecord::Migration
  def change
    create_table :blacklisted_manufacturers do |t|
      t.string :name, unique: true, null: false

      t.timestamps null: false
    end
  end
end
