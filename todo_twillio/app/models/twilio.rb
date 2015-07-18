
require 'twilio-ruby'

# put your own credentials here
account_sid = File.readlines("key.md")[0]
auth_token =  File.readlines("key.md")[1]

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# alternatively, you can preconfigure the client like so
Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end

# and then you can create a new client without parameters
@client = Twilio::REST::Client.new