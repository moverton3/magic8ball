# allows me to add color to my project
require 'colorize'
#Basic Objectives:
# User inputs question
#- Computer outputs random answer
#- User inputs "QUIT"
#- Computer outputs a goodbye message and exits

# non-changing array
Answers = [
  "Absolutely!",
  "Absolutely not.",
  "Don't count on it.",
  "Damn right!",
  "Maybe.",
  "Nope.",
  "Yes!",
  "The outlook is promising.",
  "Ding! Ding! Ding! Yup.",
  "Only if it's Friday.",
  "Ask your mom...",
  "Mmhmmm."
]
# creates function
  def magic
    puts "Welcome to the Magic 8-Ball. Ask me anything!".magenta
    puts "You can add your own answers anytime by pressing 'y'."
    puts "(Press 'q' to quit at anytime.)".red
# receives user's answer
    question = gets.chomp
# use a case method here for in case user types 'y' or 'q'
    case question
      when "y"
        additional
      when "q"
        exit
# if user just types question, this spits out a random answer for user and then loops user back to original question
      else
        puts Answers.sample.green
        magic
    end
  end
# if user types 'y' they then add their own answer, press enter and then their answer is added to array of answers
  def additional
    puts "Add your own special 'answer'..."
    add = gets.chomp
    puts "Answer added."
    Answers << add
    puts Answers
    magic
  end
magic
