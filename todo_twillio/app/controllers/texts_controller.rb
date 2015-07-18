class TextsController < ApplicationController
 
  

  def send_text
    account_sid = File.readlines("key.md")[0].strip
    auth_token =  File.readlines("key.md")[1].strip

    # set up a client to talk to the Twilio REST API
    @text = Twilio::REST::Client.new account_sid, auth_token
    @todo = Todo.find(params[:id])
    @message = @text.messages.create(
      {:to => File.readlines("key.md")[2].strip,
       :from => File.readlines("key.md")[3].strip,
       :body => "#{@todo.text}"})
    redirect_to todo_path(@todo)
  end

end
