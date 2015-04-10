require './helpers/user_helpers'

class ApplicationController < Sinatra::Base
  include UserHelpers
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do    
    @links = Link.all
    erb :index
  end
end