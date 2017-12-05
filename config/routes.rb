Rails.application.routes.draw do
  get 'ingredients/index'

  get 'welcome/index'
  root 'welcome#index'

  resources :widgets
  resources :rezepts
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
