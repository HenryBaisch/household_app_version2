Rails.application.routes.draw do
  get 'expenses/index'
  get 'expenses/show'
  get 'expenses/new'
  get 'expenses/edit'
  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  get 'groups/edit'
  get 'home/index'
  get 'search/users', to: 'search#users', as: 'search_users'
  get 'nearby_restaurants', to: 'restaurants#nearby_restaurants'
  get 'search', to: 'restaurants#search'
  devise_for :users
  root 'groups#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :groups do
    resources :expenses
    resources :expenses
    resources :group_members, only: [:create]
  end
  

  
  # Defines the root path route ("/")
  # root "articles#index"
end
