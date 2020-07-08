class MessageBoardsController < ApplicationController
  def display_message
    MessageBoardHelper.display_message(params.require(:message))
    render :nothing => true, :status => 204
  end
end