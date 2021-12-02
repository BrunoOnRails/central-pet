Rails.application.routes.draw do
  root 'cads#index'
  resources :cads
end
