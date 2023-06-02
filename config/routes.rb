Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  # get lists
  resources :lists, only: [:destroy, :index, :new, :create, :show]

  # get bookmarks
  resources :bookmarks, only: [:destroy]

  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: :bookmarks
end
