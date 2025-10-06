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
      post 'send_confirmation'
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
  get 'reports/email_list', to: 'reports#email_list'
  get 'reports/invoice_list', to: 'reports#invoice_list'
  get 'reports/vacant_lots', to: 'reports#vacant_lots'
  get 'reports/event_totals', to: 'reports#event_totals'
  get 'reports/daily_totals', to: 'reports#daily_totals'
  get 'reports/discount_list', to: 'reports#discount_list'


  # Define all routes related to events
  resources :events

  # Define routes for user authentication
  # post "sign_up", to: "users#create"
  # get "sign_up", to: "users#new"

  resources :users, only: [:create, :new, :index, :edit, :update, :destroy]
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token

  get "login", to: "sessions#new"  
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token

  get "account", to: "users#edit"
  put "account", to: "users#update"
  delete "account", to: "users#destroy"

  resources :active_sessions, only: [:destroy] do
    collection do
      delete "destroy_all"
    end
  end
end
