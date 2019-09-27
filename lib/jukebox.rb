# Add your code here
def help
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i >= 1 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Playing #{songs.find{|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index.map{|item, index| puts "#{index + 1}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    input = gets.strip
    case input
      when "exit"
        exit_jukebox
        break
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      else
        puts "Invalid input, please try again"
    end
  end
end

