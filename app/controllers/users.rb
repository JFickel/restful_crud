get '/users' do 
  @users = User.all
  erb :'/users/_index', layout: false
end

get '/users/:id' do |id|
  @user = User.where(id: id).first
  erb :'/users/_show', layout: false
end

post '/users' do
  user = User.new(params[:users])
end

put '/users/:id' do |id|

end

delete '/users/:id' do |id|

end
