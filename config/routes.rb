Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:show, :new, :create]
  end

  delete 'doses/:id', to: 'doses#destroy'

end
