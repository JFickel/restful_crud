get '/users' do 
  @users = User.all
  erb :'/users/index'
end

get '/users/:id' do |id|
  @user = User.find_by(id: id)
  erb :'/users/show'
end

post '/users' do
  user = User.new(params[:users])
end

put '/users/:id' do |id|
  
end

delete '/users/:id' do |id|

end
