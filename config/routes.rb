Mytask::Application.routes.draw do
  resources :line_items


  resources :desks


  resources :tasks


  resources :users, :user_sessions
  root :to => 'users#index'
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
