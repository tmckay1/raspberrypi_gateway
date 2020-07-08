class MessageBoardHelper
  class << self
    def display(message)
      clean_message = message.gsub(/[^a-zA-Z0-9\-]/,"")
      display_command = '/home/pi/scripts/message_board/animateMessageBoard.py'
      SystemHelper.execute_command("sudo python3 #{display_command} \"#{clean_message}\"")
    end
  end
end