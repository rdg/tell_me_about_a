Rails.application.routes.draw do
  root 'moments#index'

  resources :moments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
