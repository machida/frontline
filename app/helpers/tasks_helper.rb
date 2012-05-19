module TasksHelper
  def help_message(task)
    task.help ? "solve" : "help"
  end
end