Rails.application.routes.draw do
  get 'payments/index'
  get 'payments/new'
  get 'payments/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "reservations#index"

  resources :campers
  resources :lots do
    member do
      get 'list'
    end
  end
  resources :reservations do
    resources :payments
    member do
      get 'check_in'
      get 'check_out'
      
    end
    get 'in_park', on: :collection
  end

  
end
