class ChatroomController < ApplicationController

  def index 
    @messages = Message.all
  end 

  def show 
    @message = Message.find(params[:id])
  end

  def create 
    @message = Message.new(message_params)
  end

  private
  
  def message_params
    params.require(:message).permit(:body)
  end
end