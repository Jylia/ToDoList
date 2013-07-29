Mytask::Application.routes.draw do
  resources :tasks #, :collection => { :completed => :get }
  resources :users, :user_sessions
  root :to => 'users#index'
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  resources :tasks do
    collection do
      delete :destroy_completed
    end
  end
  
end
