class TrumpApp < Sinatra::Base

  get '/' do

    @hname1 = Hillaryname.find(1).name
    @hname2 = Hillaryname.find(2).name
    @hname3 = Hillaryname.find(3).name
    @hdate1 = Hillaryname.find(1).updated_at
    @hdate2 = Hillaryname.find(2).updated_at
    @hdate3 = Hillaryname.find(3).updated_at

    @bname1 = Hillaryname.find(1).name
    @bname2 = Hillaryname.find(2).name
    @bname3 = Hillaryname.find(3).name
    @bdate1 = Hillaryname.find(1).updated_at
    @bdate2 = Hillaryname.find(2).updated_at
    @bdate3 = Hillaryname.find(3).updated_at

    erb :layout
  end




  post '/hillary' do
    hname = Hillaryname.new(params[:hillary_name])

    if hname.save
      @hname = hname
    else
      redirect_to '/'
    end

    erb :layout
  end





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
