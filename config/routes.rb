Rails.application.routes.draw do
 root "home#index"

#resources :weight, :zigbee

resources :zigbee

get		'/gateway', 					to: 'gateway#index'
get 	'/gateway/:id', 				to: 'gateway#show'
get		'/gateway/:from/:to/:amt',		to: 'gateway#transfer'
put		'/gateway/:id',					to: 'gateway#update'
post	'/gateway',						to: 'gateway#create'
delete	'/gateway/:id',					to: 'gateway#destroy'
 
end
