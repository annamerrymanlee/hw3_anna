Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "places#index"  # Default page shows list of places
  
    resources :places, only: [:index, :show, :new, :create] do
      resources :entries, only: [:new, :create]
    end
end
