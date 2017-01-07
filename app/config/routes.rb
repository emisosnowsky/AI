Rails.application.routes.draw do
 	
 	get '/home', to: 'pages#home'


 	#get '/products', to: 'products#index'

 	#get '/categories', to: 'categories#index', as: 'show_categories' 

 	#get 'product/buy', to: 'product#buy', as: 'buy_product'

    get '/signup', to: 'customers#signup'
    
   #get '/login', to: 'customers#login'
    
    #get '/logout', to: 'customers#logout'

    resources :products
    resources :customers

end
