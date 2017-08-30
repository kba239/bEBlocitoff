Rails.application.routes.draw do
  devise_for :users

  get 'users/show'

  get 'welcome/index'

  root 'users#show'
end