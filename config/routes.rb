Rails.application.routes.draw do
  resources 'posts' do
    resources 'comments', only: [:create] #resource는 원래 7개 action 다 만드는데 이렇게 해주면 create만 만드는 거
  end
  root 'posts#index'
  # get 'posts/index'
  # get 'posts/new', as: 'new'
  # post 'posts' => 'posts#create'
  # get 'posts/create'

end
