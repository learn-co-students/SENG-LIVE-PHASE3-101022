class OrganizationsController < ApplicationController


  # CRUD 

  # READ 


  # READ all organizations 

  get '/organizations' do 
    # I need to return all organizations 
    organizations = Organization.all 

    # I need to send a response including the result of my db query 
    organizations.to_json # this going to convert ruby code into JSON format

    # Organization.all.to_json
  end

  # READ just a single organization

  # how do we know which organization we want to return 

  get '/organizations/:id' do # dynamic URL
    # params hash: 2 ways to add key/value pairs this hash
    # 1. using dynamic endpoints 
    organization = Organization.find(params[:id])

    # send out a json response 
    organization.to_json
  end 


  # CREATE POST 

  post '/organizations' do 
    # binding.pry

    # params = {"name"=>"Gurrs and Purrs"}


    # organization = Organization.create(name: params[:name])
    organization = Organization.create(params)
    organization.to_json
  end

# update a single organization 

patch '/organizations/:id' do 

# i need to find the organization 
organization = Organization.find(params[:id])
# I need to update the org 
organization.update(name: params[:name])

# I need to return a JSON response 
organization.to_json
# Organization.find(params[:id]).update(name: params[:name]).to_json
end 

# DELETE 

delete '/organizations/:id' do 
  organization = Organization.find(params[:id])
  organization.destroy
  "Successfully deleted"
end 


  # private 

  # the creation of a resource 
  # def organization_params
  #   params.permit(:name)
  # end


  # post '/special_routes' do 
  #   password = params[:password]

  #   if password == "spongebobislove"
  #     status_code :permitted
  #   else 
  #     status_code :forbidden 
  #   end
  # end


end