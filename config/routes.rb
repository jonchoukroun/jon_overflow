Rails.application.routes.draw do

  resources :users

  # Signup routes
  get '/signup' => 'users#new'
  post '/user/' => 'users#create'

  # Login/logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
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
  
  root 'questions#index'


end
