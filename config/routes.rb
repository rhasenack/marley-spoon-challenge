Rails.application.routes.draw do

  resources :recipes, only: [:index, :new]

  root to: "recipes#index"

end
