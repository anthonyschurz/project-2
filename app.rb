class TrumpApp < Sinatra::Base

  get '/' do
    erb :layout
  end

  post '/nicknames' do
     name = Nickname.new(params[:name])
     adjective = Adjective.find_by_letter(name.first_name[0].upcase)
     tname = adjective.adjective
     name[:trump_name] = tname

     if name.save
     @name = name
     else
       redirect_to '/'
     end
     erb :layout
  end

end
