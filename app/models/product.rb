require 'factual'

class Product
  include ActiveModel::Serialization

  attr_accessor :upc, :name, :brand, :manufacturer, :image_urls
  attr_accessor :avg_price, :category, :size

  def initialize upc
    factual = Factual.new Rails.application.secrets[:factual_api_key], Rails.application.secrets[:factual_api_secret]
    response = factual.table('products-cpg').filters('upc' => upc).first
    raise ActiveRecord::RecordNotFound if response.nil?
    @upc = upc
    @name = response['product_name']
    @brand = response['brand']
    @manufacturer = response['manufacturer']
    @image_urls = response['image_urls']
    @avg_price = response['avg_price']
    @category = response['category']
    @size = response['size']
  end

  def blacklisted?
    puts "blacklisted?"
    @manufacturer.present? && BlacklistedManufacturer.find_by_name(@manufacturer).present?
  end

  def read_attribute_for_serialization(key)
    instance_values[key.to_s]
  end
end

# Example product json from Factual API:
#
# {
#   "avg_price"     =>  6.62,
#   "brand"         =>  "Kraft Foods",
#   "category"      =>  "Cheeses",
#   "ean13"         =>  "0021000615261",
#   "factual_id"    =>  "5ff78574-8d0a-4c15-8637-4f8a51218d6c",
#   "image_urls"    =>  [
#     "http://media.itemmaster.com:80///0/0/0/458/64c2a1cc-efa8-447b-86eb-1d7ca6c7093d.png?originalFormat=tif&size=600x600",
#     "http://static-resources.goodguide.net/images/entities/large/248163.jpg"
#   ],
#   "product_name"  =>  "Cheese American Slices",
#   "size"          =>  ["16 oz"],
#   "upc"           =>  "021000615261"
# }
