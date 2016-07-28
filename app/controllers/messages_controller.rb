post '/messages' do

  phone_number = params[:phone]


  # api_result = RestClient.get 'http://foaas.com/off/Tom/Everyone?shoutcloud'

  # erb :index

  url = 'http://foaas.com/off/Tom/Everyone?shoutcloud'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  jsonResponse = response.to_json


  redirect '/'

end

# get 'http://foaas.com/off/Tom/Everyone?shoutcloud'


# end

# post "http://foaas.com/off/Tom/Everyone?shoutcloud" do


# end
