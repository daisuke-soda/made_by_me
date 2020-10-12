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
  resources :comments, only:[:index, :create, :destroy]
  resources :favorites, only:[:index, :create, :destroy]
  resources :steps, only:[:index, :create]
  resources :recipes, only:[:index, :create, :new, :show, :edit, :update, :destroy]
  resources :users, only:[:show, :edit, :update, :destroy]

end
