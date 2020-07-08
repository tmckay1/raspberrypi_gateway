class MessageBoardsController < ApplicationController
  def display_message
    render json: { message: params.require(:message) }
  end
end