Rails.application.routes.draw do
  root 'posts#new'
  get 'posts/index'
  get 'posts/new', as: 'new'
  post 'posts' => 'posts#create'
  get 'posts/create'

end
