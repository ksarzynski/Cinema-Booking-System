Rails.application.routes.draw do
  resources :films
  resources :customers
  resources :screenings
  root 'screenings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
