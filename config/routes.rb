Rails.application.routes.draw do
  root "singles#index"
  resources :singles do
    resources :comments
  end

end
