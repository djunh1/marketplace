Rails.application.routes.draw do
  namespace :admin, path: 'market_place_admin' do 
      resources :users
      resources :guest_users

      root to: "users#index"
    end
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  get '/main' => 'pages#landing_page'
  get '/home' => 'pages#home'
end
