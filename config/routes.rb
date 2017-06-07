Rails.application.routes.draw do
  root 'home#index'
  # the 2 routes that i needed for it to work,
  # home is my controller and index is the page i have the form on
  get 'index' => 'home#index'
  post 'index' => 'home#index'


end
