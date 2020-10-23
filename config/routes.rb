Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    root 'home#top'
    resources :recipes, only: [:index, :destroy]
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
  end

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root 'home#top'
  get 'home/about' => 'home#about'
  get 'users/unsubscribe' => 'users#unsubscribe'
  get 'users/withdrawn' => 'users#withdrawn'
  post '/guests/guest_sign_in', to: 'guests#new_guest'
  
  resources :favorites, only:[:index]
  resources :steps, only:[:index, :create]
  resources :recipes, only:[:index, :create, :new, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only:[:index, :create, :destroy]
  end
  resources :users, only:[:show, :edit, :update, :destroy] do
    get :favorites, on: :collection
  end

end
