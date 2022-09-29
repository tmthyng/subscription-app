Rails.application.routes.draw do
  root 'subscriptions#home'
  
  get '/subscriptions', to: 'subscriptions#home'
end
