Kicker.option_parser.on('-e', '--execute [COMMAND]', 'The command to execute.') do |command|
  pre_process do |files|
    files.clear
    execute "sh -c #{command.inspect}"
  end
end