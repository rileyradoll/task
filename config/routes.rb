Rails.application.routes.draw do
  get 'images/index'
  get 'images/new'
  get 'images/show'
  post 'images' => 'images#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlr
  root 'welcome#index'
  resources :gallery, only: [:index]
end
