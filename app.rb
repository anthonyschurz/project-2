class TrumpApp < Sinatra::Base

  get '/' do

    @hname1 = Hillaryname.find(1).name
    @hname2 = Hillaryname.find(2).name
    @hname3 = Hillaryname.find(3).name
    @hdate1 = Hillaryname.find(1).updated_at.strftime("%m.%d.%Y")
    @hdate2 = Hillaryname.find(2).updated_at.strftime("%m.%d.%Y")
    @hdate3 = Hillaryname.find(3).updated_at.strftime("%m.%d.%Y")

    @bname1 = Berniename.find(1).name
    @bname2 = Berniename.find(2).name
    @bname3 = Berniename.find(3).name
    @bdate1 = Berniename.find(1).updated_at.strftime("%m.%d.%Y")
    @bdate2 = Berniename.find(2).updated_at.strftime("%m.%d.%Y")
    @bdate3 = Berniename.find(3).updated_at.strftime("%m.%d.%Y")

    erb :layout
  end


# DESTROY HILLARY NICKNAME

  post '/hillary_d' do
    @hname = Hillaryname.find(params[:hillary_name])
    @hname.destroy
    erb :layout
  end


# MAKE YOUR NICKNAME

  post '/yournickname' do
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
