require 'factual'

class Product
  # {"avg_price"=>6.62, "brand"=>"Kraft Foods", "category"=>"Cheeses", "ean13"=>"0021000615261", "factual_id"=>"5ff78574-8d0a-4c15-8637-4f8a51218d6c", "image_urls"=>["http://media.itemmaster.com:80///0/0/0/458/64c2a1cc-efa8-447b-86eb-1d7ca6c7093d.png?originalFormat=tif&size=600x600", "http://static-resources.goodguide.net/images/entities/large/248163.jpg"], "product_name"=>"Cheese American Slices", "size"=>["16 oz"], "upc"=>"021000615261"}
  attr_accessor :upc, :name, :brand, :manufacturer, :image_urls
  attr_accessor :avg_price, :category, :size

  def initialize upc
    factual = Factual.new Rails.application.secrets[:factual_api_key], Rails.application.secrets[:factual_api_secret]
    factual_product = factual.table('products-cpg').filters('upc' => upc).first
    raise ActiveRecord::RecordNotFound if factual_product.nil?
    @upc = upc
    @name = factual_product['product_name']
    @brand = factual_product['brand']
    @manufacturer = factual_product['manufacturer']
    @image_urls = factual_product['image_urls']
    @avg_price = factual_product[:avg_price]
    @category = factual_product[:category]
    @size = factual_product[:size]
  end

  def blacklisted?
    @manufacturer.present? && BlacklistedManufacturer.find_by_name(@manufacturer).present?
  end

end