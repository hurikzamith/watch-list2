Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:create, :new, :index, :show ] do
    resources :bookmarks, only: [ :create, :new, :index ]
  end

end
