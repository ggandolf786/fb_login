Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  # resources :users, only: %i[new create]
  # get '/shared_pictures' => 'users#shared_pictures'
  # get '/shared_pictures_download' => 'users#shared_pictures_download'
  # get '/mypassword_download' => 'users#index'

  resources :profiles do
    member do
      get :shared_pictures
      get :login
      post :save_login
      get :shared_album
      get :mypasswords
      # post :authenticate_admin
    end
  end
  get '/admin_login' => 'profiles#admin_login'
  post '/authenticate_admin' => 'profiles#authenticate_admin'
  post '/logout' => 'profiles#logout'

end
