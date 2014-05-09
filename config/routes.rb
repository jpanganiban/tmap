Tmap::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'pages#index'

  resources :inquiries
  resources :questions
end
