Rails.application.routes.draw do
  get 'questions/index'

  resources :questions do 
  	member do
  		patch 'up_vote'
  		patch 'down_vote'
  	end
  	
    resources :answers
			member do
	  		patch 'up_vote'
				patch 'down_vote'
	  	end
  end
  
  root 'questions#index'


end
