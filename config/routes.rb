Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get 'accounts' => 'user_accounts#index'
  get 'account/:id/edit' => 'user_accounts#edit'
  post 'account/:id/edit' => 'user_accounts#update'
  delete 'account/:id/destroy' => 'user_accounts#destroy'

  get 'tasks/new' => 'tasks#new'
  post 'tasks/new' => 'tasks#create'
end
