Tmap::Application.routes.draw do
  root :to => 'pages#index'

  resources :inquiries
  resources :questions
end
