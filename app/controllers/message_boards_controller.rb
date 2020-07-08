class MessageBoardsController < ApplicationController
  def display_message
    clean_message = MessageBoardHelper.write_message(params.require(:message))
    render json: { message: clean_message }
  end
end