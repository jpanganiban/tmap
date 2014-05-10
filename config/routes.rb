Tmap::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'pages#index'

  resources :inquiries do
  	member do
  		get 'result'
  	end
  end
  
  resources :questions
end
