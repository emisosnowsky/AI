Rails.application.routes.draw do
 	

 	get '/home', to: 'pages#home'


 	#get '/products', to: 'products#index'

 	#get '/categories', to: 'categories#index', as: 'show_categories' 

 	  get 'products/buy', to: 'products#buy'
 	  
 	  get 'buy', to: 'products#buy'

    #get '/signup', to: 'customers#signup'
    
  	get    '/login',   to: 'logins#new'
  	post   '/login',   to: 'logins#create'
  	get 	'/logout', to: 'logins#destroy'
  	

    resources :products
    resources :customers
    resources :carts
    resources :details, only: [:create, :update, :destroy]


end
