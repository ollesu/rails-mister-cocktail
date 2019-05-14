Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails do
    resources :doses, only: [:create, :new, :destroy, :show]
  end

 # get 'cocktails', to: 'cocktails#index'
 #  get 'cocktails/new', to: 'cocktails#new', as: :new
 #  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
 #  post 'cocktails', to: 'cocktails#create'
end
