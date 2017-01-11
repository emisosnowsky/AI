Rails.application.routes.draw do
 	

 	get '/home', to: 'pages#home'


 	#get '/products', to: 'products#index'

 	#get '/categories', to: 'categories#index', as: 'show_categories' 

 	#get 'product/buy', to: 'product#buy', as: 'buy_product'

    #get '/signup', to: 'customers#signup'
    
  	get    '/login',   to: 'logins#new'
  	post   '/login',   to: 'logins#create'
  	get 	'/logout', to: 'logins#destroy'

    resources :products
    resources :customers
    resources :cart, only: [:show]
    resources :details, only: [:create, :update, :destroy]


end
