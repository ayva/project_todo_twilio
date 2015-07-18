class TextsController < ApplicationController
 
  

  def send_text
    account_sid = File.readlines("key.md")[0]
    auth_token =  File.readlines("key.md")[1]

    # set up a client to talk to the Twilio REST API
    @text = Twilio::REST::Client.new account_sid, auth_token
    

    @text.messages.create(
      from: File.readlines("key.md")[3].strip,
      to: File.readlines("key.md")[2].strip,
      body: 'Hey there!'
    )
  end
end
