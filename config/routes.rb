Rails.application.routes.draw do

  # Signup routes
  get '/signup' => 'users#new'
  # post '/users/' => 'users#create'

  # Login/logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users

  shallow do
    resources :categories do
      resources :questions do
        resources :answers
      end
    end
  end
  
  root 'categories#index'


end
