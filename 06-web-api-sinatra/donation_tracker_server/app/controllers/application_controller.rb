class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'



  # HTTP Verbs (are going to determine the type of request our client side is making)
  # GET, POST, PATCH, DELETE

  # 'endpoint'/'path' - /url

  # block: what determines how we handle the request 

  get '/hello_world' do 
    "Hello World"
  end
end