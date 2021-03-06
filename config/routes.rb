Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users

  root 'welcome#index'
  get '/properties/:id/buy', to: 'properties#buy'

end
