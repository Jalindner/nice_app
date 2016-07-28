post '/messages' do

  phone_number = params[:phone]
  name = params[:name]

  api_result = RestClient.get "http://foaas.com/off/#{name}/A%20Dear%20Friend", {:accept => :json}
  jsonResult = JSON.parse(api_result)
  p jsonResult['message']
  p jsonResult['subtitle']
  p api_result
  # erb :index




  redirect '/'
end

# get 'http://foaas.com/off/Tom/Everyone?shoutcloud'


# end

# post "http://foaas.com/off/Tom/Everyone?shoutcloud" do


# end
