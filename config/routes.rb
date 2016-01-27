Rails.application.routes.draw do
  resources :incomes
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  resources :accounts
  resources :budgets
  resources :founding_sources

  root 'welcome#index'
end
