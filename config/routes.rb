Rails.application.routes.draw do
  root "singles#index"
  resources :singles

end
