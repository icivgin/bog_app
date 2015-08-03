Rails.application.routes.draw do
    
    root to: "creatures#index"
    get "/new", to: "creatures#new"
    post "/creatures", to: "creatures#create"
    get "/creatures/:id", to: "creatures#show"

    resources :creatures, only: [:index, :show, :create, :show]
end
