Rails.application.routes.draw do
  resource :scan, only: [:create]
end
