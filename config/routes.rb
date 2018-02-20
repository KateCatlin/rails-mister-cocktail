Rails.application.routes.draw do

  root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:show, :new, :create]
  end

  resources :doses, only: [:destroy]

end
