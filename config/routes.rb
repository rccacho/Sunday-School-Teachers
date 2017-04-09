Rails.application.routes.draw do
  root          to: 'users#home'

  resources :users do
  	resources :messages do
  	  resources :activities, shallow: true
  	end
  end

  get     '/login',    to: 'sessions#new'
  post    '/login',    to: 'sessions#create'
  delete  '/logout',   to: 'sessions#destroy'
end
