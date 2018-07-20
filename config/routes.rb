Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  resources :users, only: %i[new create]
  get '/shared_pictures' => 'users#shared_pictures'
  get '/shared_pictures_download' => 'users#shared_pictures_download'
  get '/mypassword_download' => 'users#index'
end
