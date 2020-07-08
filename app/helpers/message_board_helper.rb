module MessageBoardHelper
  def self.write_message(message)
    message.gsub(/[^a-zA-Z0-9\- ]/,"").tap do |clean_message|
      display_command = '/home/pi/scripts/message_board/animateMessageBoard.py'
      SystemHelper.execute_command("sudo python3 #{display_command} \"#{clean_message}\" &")
    end
  end
end