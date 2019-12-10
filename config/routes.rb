Rails.application.routes.draw do
  get 'c35/index'
    resources :comments
  root 'c35#index'
end
