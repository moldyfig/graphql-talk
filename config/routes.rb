Rails.application.routes.draw do 
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  root 'albums#index'
  get 'albums/index'

  get 'record_labels' => 'record_labels#index'
  get 'artists' => 'artists#index'
  get 'albums' => 'albums#index'

  resources :artists

  resources :albums do
    resources :artists
    resources :record_labels
  end

  resources :record_labels
end
