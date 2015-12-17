RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require 'rubygems'
require 'bundler/setup'


if ARGV.first
  require_relative ARGV.first
else
  puts "runner.rb expects only one argument, and it should be a ruby file to run"
end

