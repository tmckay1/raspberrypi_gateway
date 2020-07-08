class SystemHelper
  class << self
    def execute_command(command)
      system command
    end
  end
end