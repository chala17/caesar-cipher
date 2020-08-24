def caesar_cipher(user_string, shift) 
  shift = shift % 26
  shifted_array = user_string.split("").map do |char|
    char = char.ord
    if (char > 64 && char < 91) 
      char = ((((char % 65) + shift) % 26) + 65)
    end
    if (char > 96 && char < 123)
      char = ((((char % 97) + shift) % 26) + 97)
    end
    char = char.chr
  end
  shifted_array.join()
end

keep_going = true

while (keep_going) do
  puts "Type in your super secret message"
  user_string = gets.chomp
  puts "Type in your value you'd like to shift by"
  shift = gets.chomp.to_i
  puts "Your encoded message is"
  puts "#{caesar_cipher(user_string, shift)}"
  puts "Would you like to encode another message?"
  answer = gets.chomp.downcase
  unless (answer == "yes" || answer == "y")
    keep_going = false
  end
end