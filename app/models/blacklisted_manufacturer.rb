class BlacklistedManufacturer < ActiveRecord::Base
  validates :name, presence: true
end
