Rails.application.routes.draw do

  root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:show, :new, :create]
  end

  delete 'doses/:id', to: 'doses#destroy'

end
