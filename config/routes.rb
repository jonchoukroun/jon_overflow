Rails.application.routes.draw do

  # Signup routes
  get '/signup' => 'users#new'
  # post '/users/' => 'users#create'

  # Login/logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :categories

  
  # Questions resource that allows for voting up/down
  resources :questions do 
  	member do
  		patch 'up_vote'
  		patch 'down_vote'
  	end
  	
  # Questions resource that allows for voting up/down
    resources :answers do
			member do
	  		patch 'up_vote'
				patch 'down_vote'
	  	end
    end
  end
  
  root 'categories#index'


end
