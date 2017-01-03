Rails.application.routes.draw do
 	
 	get '/home', to: 'pages#home'

 	get '/products', to: 'products#index'

 	get '/categories', to: 'categories#index', as: 'show_categories' 

 	get 'product/buy', to: 'product#buy', as: 'buy_product'

 	get 'products/:id', to: 'catalog#view'

     get '/signup', to: 'customers#signup'
     get '/login', to: 'customers#login'
     get '/logout', to: 'customers#logout'

end
