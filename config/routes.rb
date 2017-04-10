Rails.application.routes.draw do
  resources 'posts'
  root 'posts#index'
  # get 'posts/index'
  # get 'posts/new', as: 'new'
  # post 'posts' => 'posts#create'
  # get 'posts/create'

end
