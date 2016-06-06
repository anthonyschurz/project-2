class TrumpApp < Sinatra::Base

  post '/' do
       # p params
       @name = Name.create(params[:name])
       @name.save
  end
end
