Rails.application.routes.draw do

	get '/', to: 'products#home'

  	resources :products
  	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
