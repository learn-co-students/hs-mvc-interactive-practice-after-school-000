require_relative "models/goat.rb"

require "bundler"
Bundler.require


class MyApp < Sinatra::Base
  get "/" do
    @usr_goat = Goat.new("I need a name!", 0)
    erb :index
  end
end
