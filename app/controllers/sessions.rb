# # retrieve login page
get '/login' do
  erb :'sessions/new'
end

# login
# post '/sessions' do
#   puts params
# end

# # logout
# delete '/sessions' do
#  session[:user_id] = nil
# end

# get '/' do
#   redirect '/login'
# end
