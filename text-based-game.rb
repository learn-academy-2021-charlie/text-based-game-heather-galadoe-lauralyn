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
  cookie = "You see a random cookie on the ground. Do you want to eat the cookie? Yes or No "
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
  eat = "You see smack of jellyfish and a bale of sea turtles. Would you like to swim with the 'turtles' or the 'jellyfish'?"
  print_slow eat
  gets.chomp
end

def deep_sea answer
  sea_option = "You see a light. Do you want to swim 'towards' it or 'away'?"
    if answer == "turtles"
      print_slow "You got lost into the deep sea. #{sea_option}"
    elsif answer == "jellyfish"
      print_slow "You got stung and fell into the deep sea. #{sea_option}"
    end
    gets.chomp
end

def mantaray_dolphin
  option = "You stop when you see a tunnel and at the end is some sunlight. You must choose to go 'right' or 'left'"
  print_slow option
  gets.chomp
end

 def safe
  print_slow "You see the shore! You swim to the mainland and you are now safe. Congratulations! Time to get some lunch."
end

def render_ascii artFile
  IO.foreach(artFile) do |line|
    puts line
  end
end



render_ascii "Beach.txt"
start_story_book
answer = cookie

if answer.downcase == "no"
  render_ascii "mermaid.txt"
end

yes_or_no(answer, "yes", "You can now breathe underwater so you walk in the ocean.", "You gather sea shells and you make a necklace. You wear it and turn into a mermaid! You then go for a dive in the ocean.")

answer = eat_cookie
if answer == "turtles"
  render_ascii "turtle.txt"
else
  render_ascii "jellyfish.txt"
end
yes_or_no(answer, "turtles", "Hold on tight! We are going for a swim!", "Oh no! There's too many tentacles!")
answer= deep_sea answer

if answer == "towards"
  render_ascii "fish.txt"
else
  render_ascii "squid.txt"
end

yes_or_no(answer, "towards", "You see an angler fish and it starts to chase you", "You see a glowing squid and follow it")

answer = mantaray_dolphin
if answer == 'left'
  render_ascii "mantaray.txt"
else
  render_ascii "dolphin.txt"
end
yes_or_no(answer, "left", "You found a manta ray! Ride it to the surface to find shore.", "You found a dolphin! Hold on tight and it will take you to the surface.")
safe
