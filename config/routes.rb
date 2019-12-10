Rails.application.routes.draw do
  get 'c35/index'
    resources :comments do
      resources :discussions
    end
  root 'c35#index'
end
