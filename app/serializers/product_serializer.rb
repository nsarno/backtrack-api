class ProductSerializer < ActiveModel::Serializer
  attributes :name, :brand, :manufacturer, :blacklisted

  def blacklisted
    object.blacklisted?
  end
end
