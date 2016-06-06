class TrumpApp < Sinatra::Base

  get '/' do
    erb :layout
  end
  
  post '/' do
       # p params
       @name = Nickname.create(params[:name])
       @name.save
  end
end
