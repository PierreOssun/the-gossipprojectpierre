Rails.application.routes.draw do

  root 'gossips#index', as: 'welcome'
  resources :gossips

end
