Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'

  mount_graphql_devise_for 'User', at: 'graphql_auth'
  as :user do
    # Define routes for User within this block.
  end
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
