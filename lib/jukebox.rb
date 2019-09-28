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
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  play_input = gets.strip
  
  if (1..songs.length).include?(play_input.to_i)
    title_by_number = songs[play_input.to_i - 1]
    puts "Playing #{title_by_number}"
  elsif songs.include?(play_input)
    puts "Playing #{play_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    command_input = gets.strip
    
    case command_input
    when "exit"
      print exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Invalid input, please try again"
    end
  end
end