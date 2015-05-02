Rails.application.routes.draw do
  get '/products/:upc' => 'products#show'
end
