Rails.application.routes.draw do
  root to: 'users#index'

  # sorceryで新規登録
  resources :users, only: %i[new index create]

  #sorceryでログイン
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
