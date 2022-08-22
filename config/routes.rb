Rails.application.routes.draw do
  # get 'lists/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :lists do
    resources :bookmarks, except: [:destroy]
  end
  resources :bookmarks, only: [:destroy]
end
