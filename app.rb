class TrumpApp < Sinatra::Base

  get '/' do
    erb :layout
  end

  post '/' do
       @name = Nickname.create(params[:name])
       @name.save
  end
  
end
