Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :posts, except: :show
  get 'posts/:id-:slug', to: 'posts#show', as: :show_post, constraints: {id: /\d+/}
  root 'posts#front'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
