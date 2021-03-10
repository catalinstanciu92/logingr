Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '/graphql', headers: :any, methods: [:get, :put, :post, :options]
  

    end
  end
  