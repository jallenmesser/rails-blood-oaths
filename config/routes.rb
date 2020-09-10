Rails.application.routes.draw do
  resources :cults
  resources :bloodoaths
  resources :followers

  root "cults#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
