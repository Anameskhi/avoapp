Rails.application.routes.draw do
  # scope :admin do
    get "dashboard", to: "avo/tools#dashboard"
  # end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'

  }
  get '/posts/show/:id', to: 'posts#show', as: :show_post
  get '/posts', to: 'posts#index'


  root 'home#index'
  authenticate :user do 
    mount Avo::Engine, at: Avo.configuration.root_path
    resources :posts, only: %i[new create update destroy edit]

  end
  
end
