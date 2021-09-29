Rails.application.routes.draw do
  get 'post_images/index'
  get 'post_images/show'
  get 'post_images/new'
  get 'post_images/edit'
  root'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/about' => 'homes#about'
  resources :books
  resources :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show]
end
