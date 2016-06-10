class TrumpApp < Sinatra::Base

  get '/' do
    @hnames = Hillaryname.all
    @bnames = Berniename.all
    # @namer = Nickname.last
    p "rendering layout"
    erb :layout
  end

# DESTROY HILLARY NICKNAME

  post '/hillary_d/:id' do
    @hname = Hillaryname.find(params[:id])
    p 'about to destroy ', @hname
    @hname.destroy
    redirect '/'
  end

# DESTROY BERNIE NICKNAME

  post '/bernie_d/:id' do
    @bname = Berniename.find(params[:id])
    p 'about to destroy ', @bname
    @bname.destroy
    redirect '/'
  end


  post '/hillarynames' do
    p 'about to create'
    # foreach
  end


# MAKE YOUR NICKNAME

  post '/yournickname' do
    name = Nickname.new(params[:name])
    description = Adjective.find_by_letter(name.last_name[0].upcase)
    tname = description.adjective
    name[:trump_name] = tname
    @namer = name
    name.save
    puts @namer.trump_name
    erb :layout

  end

end
