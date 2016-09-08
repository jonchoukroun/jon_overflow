Rails.application.routes.draw do
  get 'questions/index'

  resources :questions do 
    resources :answers
  end
  
  root 'questions#index'


end
