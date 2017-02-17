Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}

  resources :vehicle_instances, only: [:new, :edit, :show, :create]
  resources :search_vehicles, only: [:create]
  resources :users, only: [:edit, :update]
  match '/search_vehicle' => 'search_vehicles#new', via: :get

  root to: 'search_vehicles#new'
end
