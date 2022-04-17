Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  root 'home#index'
  get 'privacy', to: 'home#privacy'
  get 'terms', to: 'home#terms'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create] do
    collection do
      get :comments
    end
  end
  resources :shoes do
    resources :comments, only: %i[create update destroy], shallow: true
    collection do
      get :bookmarks
    end
  end
  resources :bookmarks, only: %i[create destroy]
  resource :mypage, only: %i[show edit update]
  resources :password_resets, only: %i[new create edit update]
  resources :contacts, only: [:new, :create]

  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :shoes
    resources :users, only: %i[index edit update show destroy]
  end
end
