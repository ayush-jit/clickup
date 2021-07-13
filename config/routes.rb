Rails.application.routes.draw do

  get "home/show", to: "home#show"
  resources :comments
  resources :tasks
  resources :projects
  root to: "home#index"
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
