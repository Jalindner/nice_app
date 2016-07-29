xml.instruct! :xml, :version => '1.0'
xml.response do
  xml.say 'voice' => 'alice' do
    xml.text! "Thanks for trying our documentation. Enjoy!"
  end
  xml.play "http://demo.twilio.com/docs/classic.mp3"
end
