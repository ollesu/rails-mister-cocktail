Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cocktails do
    resources :doses, only: [:create, :new, :show]
  end

  resources :doses, only: [:destroy]
 # get 'cocktails', to: 'cocktails#index'
 #  get 'cocktails/new', to: 'cocktails#new', as: :new
 #  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
 #  post 'cocktails', to: 'cocktails#create'
end
