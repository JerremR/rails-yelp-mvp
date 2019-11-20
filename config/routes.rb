Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root to: 'pages#home'

#   get 'contact', to: 'pages#contact', as: 'contact'
#   get 'about', to: 'pages#about', as: :about

  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
