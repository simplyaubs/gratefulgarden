Rails.application.routes.draw do

  root 'submissions#index'

  resources :submissions

end
