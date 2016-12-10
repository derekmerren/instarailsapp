Rails.application.routes.draw do
  get '/', to: 'login#index'
  get '/login/create', to: 'login#create'

  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
