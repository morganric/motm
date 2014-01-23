Motm::Application.routes.draw do
  resources :mixes

  match 'facebook' => 'facebook#index', :as => 'facebook'

  authenticated :user do
    root :to => 'facebook#index'
  end
  root :to => "facebook#index"
  devise_for :users
  resources :users
end