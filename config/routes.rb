Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :blogs
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"
end
