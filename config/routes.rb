SleepOverflow::Application.routes.draw do
  resources :photos do
    resources :comments
  end
  root :to => "photos#index"

  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
  get '/auth/failure', to: 'sessions#error', as: 'failure'
  get '/profile', to: 'sessions#show', as: 'show'
  delete '/signout', to: 'sessions#destroy', as: 'signout'
end
