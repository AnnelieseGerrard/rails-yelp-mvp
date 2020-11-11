Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :restaurants do
collection do
  get :top
end

  member do
end

resources :reviews, only: [:create, :new]
end
end
