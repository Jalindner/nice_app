# Display form for creating/registering new user
get '/users/new' do
  erb :'users/new'
end

# Create new user
post '/users' do
  @errors = []
  @user = User.new(username: params[:username])
  @user.password = params[:password]

  if @user.valid?
    @user.save
    session[:user_id] = @user.id
  else
    @errors = @user.errors.full_messages
    erb :index, locals: {errors: @errors}
  end

end

# Display user or their profile
get '/users/:id' do

  erb :'users/show'


end



# Delete/remove a user
delete '/users/:id' do



end
