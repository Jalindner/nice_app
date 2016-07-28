# # retrieve login page
get '/login' do

  erb :'sessions/new'
end

# login
post '/sessions' do
  username = params[:username]
  password = params[:password]
  @user = User.authentication(username, password)
  redirect '/'
  if @user.authenticate(password)
    session[:user_id] = @user.id
    # redirect "/"
    p session[:user_id]
    erb :index, layout: false, locals: {user: @user}
  else
    @errors = []
    redirect '/users/new'
  end
end

# # logout
delete '/sessions' do
 session[:user_id] = nil
 redirect '/'
end

get '/' do
  erb :index
end
