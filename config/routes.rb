Rails.application.routes.draw do
  root to: 'drones#index'

  resources :drones do
    member do
      post :take_off
      post :move
      post :land
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
