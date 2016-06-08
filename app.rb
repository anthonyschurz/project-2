class TrumpApp < Sinatra::Base

  get '/' do
    erb :layout
  end

  post '/hillary' do
    Hillaryname.new(params[:hillary_name])
    erb :layout
  end

  # post '/bernie'
  #
  # end

  post '/nicknames' do

    name = Nickname.new(params[:name])
    description = Adjective.find_by_letter(name.last_name[0].upcase)
    tname = description.adjective
    name[:trump_name] = tname



     if name.save
       @name = name
     else
       redirect_to '/'
     end

     erb :layout
  end

end
