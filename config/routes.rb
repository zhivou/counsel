Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'admin/dashboard#index'

  namespace :admin do
    resources :dashboard, only: [:index]
  end
end
