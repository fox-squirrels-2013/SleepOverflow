SleepOverflow::Application.routes.draw do
  resources :photos
  root :to => "home#index"
end
