class ProductSerializer < ActiveModel::Serializer
  attributes :name, :brand, :manufacturer, :blacklisted, :image_urls

  def blacklisted
    object.blacklisted?
  end
end
