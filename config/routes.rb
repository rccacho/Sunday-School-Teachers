Rails.application.routes.draw do
  resources :users do
  	resources :messages
  end
end
