Rails.application.routes.draw do
  root to: "projects#index"
  
  get 'my_projects/index'

  devise_for :users

  resources :projects do
    resources :donations, only: :create
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
