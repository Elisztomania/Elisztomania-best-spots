Rails.application.routes.draw do
  root to: 'pages#home'
  resources :spots, only: [:index, :show, :create, :new, :edit, :update]
end
