# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each do |song|
    puts "#{i}. #{song}"
    i++
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
      help
    end
  end
end
