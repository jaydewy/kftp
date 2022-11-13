Rails.application.routes.draw do
  get 'events/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "reservations#index"

  resources :campers

  resources :lots
  
  resources :reservations do
    resources :payments
    member do
      get 'check_in'
      get 'check_out'
    end
    collection do
      get 'search'
      get 'in_park'
    end
    
  end

  # Define routes for all available reports
  get 'reports', to: 'reports#index'
  get 'reports/totals', to: 'reports#totals'

  # Define all routes related to events
  resources :events
  
end
