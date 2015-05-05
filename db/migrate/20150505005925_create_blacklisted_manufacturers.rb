class CreateBlacklistedManufacturers < ActiveRecord::Migration
  def change
    create_table :blacklisted_manufacturers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
