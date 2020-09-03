Rails.application.routes.draw do
  get 'my_projects/index'
  root to: "projects#index"

  devise_for :users

  resources :projects do
    resources :donations
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
