Rfln::Application.routes.draw do

  root :to => 'nightouts#index'

  resources :nightouts

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  # get "/nightouts", to: "nightouts#index"

  # get "/nightouts/new", to: "nightouts#new", as: "new_nightout"

  # get "/nightouts/:id", to: "nightouts#show", as: "nightout"

  # get "/nightouts/:id/edit", to: "nightouts#edit", as: "edit_nightout"

  # post "/nightouts", to: "nightouts#create"

  # put "/nightouts/:id", to: "nightouts#update"

  # delete "/nightouts/:id", to: "nightouts#destroy"

end
