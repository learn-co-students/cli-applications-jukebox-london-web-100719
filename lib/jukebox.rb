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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_name,index|
  puts "#{index+1}. #{song_name}"
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index do |song, index|
   if song == input || index + 1 == input.to_i 
      puts "Playing #{song}"
      return
    end 
  end 
  puts "Invalid input, please try again"
end 


def exit_jukebox()
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  response = gets.strip
  while response != "exit"
    if response == "help"
      help()
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    end 
    response = gets.strip
  end
  exit_jukebox()
end 
    