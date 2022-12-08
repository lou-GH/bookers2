Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "homes#top"
get 'home/about' => 'homes#about', as: 'about'
post 'books/create'

resources :books, only:[:new, :create, :index, :show, :destroy, :edit]
resources :users, only: [:index, :show, :edit, :update]
resources :posts
get 'users/index'

end
