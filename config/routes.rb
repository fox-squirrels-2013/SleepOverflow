SleepOverflow::Application.routes.draw do
  resources :photos do
    resources :comments
  end
  root :to => "photos#index"
end
