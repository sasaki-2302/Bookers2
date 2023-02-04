Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'books/:id' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
