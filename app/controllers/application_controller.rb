require './app/helpers/user_helpers'

class ApplicationController < Sinatra::Application
  include UserHelpers

  get '/' do    
    @links = Link.all
    erb :index
  end
end