module SystemHelper
  def self.execute_command(command)
    Process.fork { system command }
  end
end