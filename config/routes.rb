Rails.application.routes.draw do
  root 'welcome#index'

  resources :doctors
  resources :clinics
  resources :articles
  resources :posts
  resources :news

  get '/login', to: 'logins#new'
   post '/login', to: 'logins#create'
   get '/logout', to: 'logins#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
