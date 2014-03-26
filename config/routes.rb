Odpp::Application.routes.draw do
  devise_for :admins

  root :to => 'home#index'
  post 'sign_up' => 'home#sign_up'

  namespace :admin do

    root :to => 'events#index'
    resources :events

  end

end
