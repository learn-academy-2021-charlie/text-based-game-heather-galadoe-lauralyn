
def print_slow string
  string.each_char do |value|
    putc value
    sleep 0.06
  end
  puts""
end

def start_story_book
  intro = "You are stuck on a island"
  print_slow intro
end


def cookie
  cookie = "To breathe underwater you must eat a cookie. Do you want to eat the cookie? Yes or No "
  print_slow cookie
  gets.chomp
end


def yes_or_no(response, choice, answer1, answer2)
  if response.downcase == choice
    puts answer1
  else
    puts answer2
  end
end


def eat_cookie
  eat = "You walk in the ocean and see smack of jellyfish and a bale of sea turtle. Would you like to swim with the 'turtles' or the 'jellyfish'?"
  print_slow eat
  gets.chomp
end

def deep_sea answer
  sea_option = "You see a light. Do you want to swim towards it or away?"
    if answer == "turtles"
      puts "you got lost into the deep sea. #{sea_option}"
    elsif answer == "jellyfish"
      puts "you got stung and fell into the deep sea. #{sea_option}"
    end
end




start_story_book
answer = cookie
yes_or_no(answer, "yes", "You can now breathe underwater", "You are gathering sea shells")
answer = eat_cookie
yes_or_no(answer, "turtles", "Hold on tight! We are going for a swim!", "Be aware! Don't get stung!")
deep_sea answer
answer = deep_sea
yes_or_no(answer, "towards", "You see an angler fish and it starts to chase you", "you see a glowing squid and follow it")
