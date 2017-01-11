Rails.application.routes.draw do
 	

 	get '/home', to: 'pages#home'


 	#get '/products', to: 'products#index'

 	#get '/categories', to: 'categories#index', as: 'show_categories' 

 	#get 'product/buy', to: 'product#buy', as: 'buy_product'

    #get '/signup', to: 'customers#signup'
    
  	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'

    resources :products
    resources :customers

end
