require "samplserv/version"
require "sinatra/base"
require "pry"

module Samplserv
  class App < Sinatra::Base
    set :logging, true

    get "/" do
      "Welcome to Samplserv!"
    end

    post "/better" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Better#{version}.mp3\"")
    end

post "/after" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/After#{version}.mp3\"")
    end

post "/doit" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/DoIt#{version}.mp3\"")
    end

    post "/ever" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Ever#{version}.mp3\"")
    end

    post "/faster" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Faster#{version}.mp3\"")
    end

    post "/harder" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Harder#{version}.mp3\"")
    end

    post "/hour" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Hour#{version}.mp3\"")
    end

    post "/makeit" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/MakeIt#{version}.mp3\"")
    end

    post "/makeus" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/MakeUs#{version}.mp3\"")
    end

    post "/morethan" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/MoreThan#{version}.mp3\"")
    end

    post "/never" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Never#{version}.mp3\"")
    end

    post "/our" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Our#{version}.mp3\"")
    end

    post "/over" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Over#{version}.mp3\"")
    end

    post "/stronger" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/Stronger#{version}.mp3\"")
    end

    post "/workis" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/WorkIs#{version}.mp3\"")
    end

    post "/workit" do
      version = params["v"] ? params["v"].to_i : 1
      spawn("afplay \"samples/WorkIt#{version}.mp3\"")
    end

    post "/beat" do
      spawn("afplay \"samples/beat.mp3\"")
    end

    get "/stop" do
      spawn("killall afplay")
      "So much for the music..."
    end

    #After(1,2,3) 
    #Do(1,2)
    #Ever(1,2,3)
    #Faster(1,2)
    #Harder(1,2)
    #Hour(1,2,3)
    #MakeIt(1,2)
    #MakeUs(1,2)
    #MoreThan(1,2,3)
    #Never(1,2,3)
    #Our(1,2,3)
    #Over(1,2,3)
    #Stronger(1,2)
    #WorkIs(1,2,3)
    #WorkIt(1,2)
    #beat

    run! if app_file == $0
  end
end