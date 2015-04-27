Rails.application.routes.draw do
 root "home#index"

 resources :weight, :zigbee

get		'/gateway', to: 'gateway#index'
get 	'/gateway/:id', 				to: 'gateway#show'
get		'/gateway/:from/:to/:amt',	to: 'gateway#transfer'
 
end
