Rails.application.routes.draw do
  resources :payment_methods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "reservations#index"

  resources :campers
  resources :lots
  resources :site_types
  resources :extras
  resources :discounts
  resources :fees
  
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
  get 'reports/event_totals', to: 'reports#event_totals'
  get 'reports/daily_totals', to: 'reports#daily_totals'
  get 'reports/event_checkins', to: 'reports#event_checkins'

  # Define all routes related to events
  resources :events
  
end
