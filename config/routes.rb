Rails.application.routes.draw do
  get 'doses/delete'
  resources :cocktails, only: [:index, :show, :create, :new] do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
  end
