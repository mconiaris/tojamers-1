Rails.application.routes.draw do

  root 'welcome#index'
  get '/login' => 'sessions#new'
  resource :session, only: [:create, :destroy]
  resources :users do
    member do
      get "password"
      patch "password", action: "update password"
      get "confirm_delete"
    end

  end


end
