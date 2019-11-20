require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :index 
    end

    get "/new" do
        erb :create_puppy
    end

    post "/puppy" do
        # We want to create a new puppy object based off of what is input in the form:
        @puppy= Puppy.new(params[:name], params[:breed], params[:age]) 
        erb :display_puppy
    end

    
end
