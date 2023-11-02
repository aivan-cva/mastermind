require 'pastel'
require 'tty-prompt'
require './sums.rb'
require './my_class.rb'

prompt = TTY::Prompt.new

pastel = Pastel.new

# prompt.ask("What is your name?", default: ENV["USER"])
# pass = prompt.mask("Enter your password")

# choices = ['a','b','c','d']
# prompt.multi_select("Select drinks?", choices)

Hya = MyClass.new('Hya', 33)

Hya.say_name

p sum(3,4)
