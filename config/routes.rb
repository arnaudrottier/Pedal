Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  resources :bicycles, only: %i[index show new create] do
    resources :bookings, only: %i[show create]
  end
end
