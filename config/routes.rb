Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'

  }

  
  root 'home#index'
  authenticate :user do 
    mount Avo::Engine, at: Avo.configuration.root_path
    get '/avo', to: 'home#index'
  end
  
end
