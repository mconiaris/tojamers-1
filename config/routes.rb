Rails.application.routes.draw do

  root 'welcome#index'
  get '/login' => 'sessions#new'
  resource :session, only: [:create, :destroy]
  resources :users do
    resources :stories, shallow: true do
        resources :pitches, shallow: true
      end
  end




end
