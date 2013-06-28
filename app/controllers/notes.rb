get '/notes' do 
  @notes = Note.all
  erb :'/notes/index'
end

get '/notes/:id' do |id|
  @note = Note.find_by(id: id)
  erb :'/notes/show'
end

post '/notes' do
  note = Note.new(params[:notes])
  erb :'/notes'
end

put '/notes/:id' do |id|
  @note = Note.find_by_(id: id)
  erb :'/notes/show'
end

delete '/notes/:id' do |id|
  Note.delete(id)
  erb :'/notes'
end