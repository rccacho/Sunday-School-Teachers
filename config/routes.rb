Rails.application.routes.draw do
  resources :users do
  	resources :messages do
  	  resources :activities, shallow: true
  	end
  end
end
