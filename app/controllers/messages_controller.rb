class MessagesController < ApplicationController
  before_action :require_user
  # GET /messages
  # GET /messages.json
  # def index
  #   @messages = Message.all
  # end

  # # GET /messages/1
  # # GET /messages/1.json
  # def show
  # end

  # # GET /messages/new
  # def new
  #   @message = Message.new
  # end

  # # GET /messages/1/edit
  # def edit
  # end

  # POST /messages
  # POST /messages.json
  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
                                    mod_message: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end
end
