Rails.application.routes.draw do
  resources :ongs, except: [:update, :edit, :destroy]
  root 'ongs#index'
end
