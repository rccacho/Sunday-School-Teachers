Rails.application.routes.draw do
  root          to: 'users#home'

  resources :users do
  	resources :messages, shallow: true, except: (:index) do
  	  resources :activities, shallow: true
  	end
  end

  get '/messages', to: 'messages#index'

  get     '/login',    to: 'sessions#new'
  post    '/login',    to: 'sessions#create'
  delete  '/logout',   to: 'sessions#destroy'
end
