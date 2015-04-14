Rails.application.routes.draw do
 root "home#index"

 resources :weight, :gateway, :zigbee
 
end
