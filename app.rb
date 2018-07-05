require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      ships = params["pirate"].delete("ships")
      Pirate.new(params["pirate"])
      ships.each {|ship| Ship.new(ship)}
      binding.pry
    end

  end
end
