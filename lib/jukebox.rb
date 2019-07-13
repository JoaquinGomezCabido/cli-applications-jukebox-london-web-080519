# Add your code here

def help
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  solution = songs.detect do |song|
    response == song
  end

  if !solution
    songs.length > response ? solution = "Invalid input, please try again" : solution = response - 1
  end

  puts solution
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true do
    puts "Please enter a command:"
    input = gets.strip
    case input
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      puts "Invalid input, please try again"
    end
  end
end
