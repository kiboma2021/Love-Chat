Rails.application.routes.draw do
  resources :comments
  root "singles#index"
  resources :singles

end
