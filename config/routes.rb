Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

end

# ************inspiration:********
  # resources: surfers, only: [:index] do
  #   resources: surfboards
  # end
  # ==> line 17? same as: get "/surfers", to: "surfers#index"


  # get "/restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show"
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"

    # root to: "movies#index"

  # # 1 show all movies / dont need
  # get "/movies", to: "movies#index"

  # # 2 see the list details
  # get "/lists", to: "list#index"

  # # 3 new list / get new
  # get "/lists/:id", to: "list#new"

  # # 4 create list / post create
  # post "/lists", to: "list#create"

  # # 5 bookmark a movie inside list
  # post "/lists/:id", to: "bookmark#create"

  # # 6 destroy a bookmark
  # delete "lists/:id", to: "lists#destroy"
