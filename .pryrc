Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

begin
  require "awesome_print"
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError
  puts "no awesome_print :("
end

