Rails.application.routes.draw do
  root 'subscriptions#home'
  
  resources :subscriptions
end
