require_relative "map"
require "sinatra"
require "erb"


class Gothonweb < Sinatra::Application
  # Prethodna verzija
  # get '/' do
  #   greeting ="Hello, WOrld!"
  #   erb :index, :locals => {:greeting => greeting}
  # end

  # get '/hello' do
  # 	name=params[:name] || "Nobody"
  # 	greeting="Hello, #{name}"
  # 		erb :index, :locals => {:greeting => greeting}
  # 	erb :hello_form
  # end

  # post '/hello' do
  # 	greeting="#{params[:greet] || "Hello"}, #{params[:name]}"
  # 	erb :index, :locals => {:greeting=>greeting}
  # end
  
  	use Rack::Session::Pool
 	get '/' do
	  session[:room]=START
	  redirect("/game")
	end

	get '/game' do
		if session[:room]
			erb :show_room, :locals => {:room => session[:room]}
		else
			erb :you_died
		end
	end

post '/game' do
	action ="#{params[:action] || nil}"
	if session[:room]
		session[:room]=session[:room].go(params[:action])
	end
	redirect("/game")
end
end


