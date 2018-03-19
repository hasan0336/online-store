Rails.application.routes.draw do
  devise_for :users
  resources :listings
  get 'pages/about'

  get 'pages/contact'
  #route name is seller , listing is control where method name is seller
  get 'seller' => "listings#seller"
  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
