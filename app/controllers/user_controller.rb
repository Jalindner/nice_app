# Display form for creating/registering new user
get '/users/new' do
  erb :'users/new'
end

# Create new user
post '/users' do
  puts "reached post"
  @user = User.new(username: params[:username])
  @user.password = params[:password]

  if @user.save
    redirect '/'

  else
    @errors = @user.errors.full_messages
    redirect '/users/new'
  end

end

# Display user or their profile
get '/users/:id' do

  erb :'users/show'


end



# Delete/remove a user
delete '/users/:id' do



end
