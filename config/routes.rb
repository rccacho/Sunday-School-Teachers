Rails.application.routes.draw do
  resources :activities
  resources :users do
  	resources :messages
  end
end
