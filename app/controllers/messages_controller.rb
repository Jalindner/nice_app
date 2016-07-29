
# get '/fun_message.xml' do
#   builder :fun_message
# end


get '/fun_message' do

  send_file 'fun_message.xml'

end

post '/messages' do

  phone_number = params[:phone]
  name = params[:name]

  api_result = RestClient.get "http://foaas.com/off/#{name}/A%20Dear%20Friend", {:accept => :json}
  jsonResult = JSON.parse(api_result)
  message = jsonResult['message']
  subtitle = jsonResult['subtitle']


  @twilio_number = "+17085183130"
  @my_num = "+16302009258"
  account_sid = ""
  auth_token = ""

  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.messages.create(
    :from => @twilio_number,
    :to => @my_num,
    :body => message + "\n" + subtitle
  )

  call = @client.account.calls.create(
    :to => @my_num,
    :from => @twilio_number,
    :url => "https://drive.google.com/file/d/0BwuOQ1igP8z3UUtRMnRSdVJIWnc/view?usp=sharing")

  # erb :index

  redirect '/'

end




# get 'http://foaas.com/off/Tom/Everyone?shoutcloud'


# end

# post "http://foaas.com/off/Tom/Everyone?shoutcloud" do


# end
