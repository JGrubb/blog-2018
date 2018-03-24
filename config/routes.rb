Rails.application.routes.draw do
  resources :posts, except: :show
  get 'posts/:id-:slug', to: 'posts#show', as: :show_post, constraints: { id: /\d+/}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
