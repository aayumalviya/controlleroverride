Rails.application.routes.draw do
  #get 'users/index'
  
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

end
