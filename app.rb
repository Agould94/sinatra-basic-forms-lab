require_relative 'config/environment'

class App < Sinatra::Base
    set :views, settings.root + '/4:26-4:30/sinatra-basic-forms-lab/views'
    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        erb :display_puppy
    end
end
