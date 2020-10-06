# frozen-string-literal: true

# lib/Caesar.rb

def caesar_cipher(user_string, shift)
  shift = shift % 26
  shifted_array = user_string.split('').map do |char|
    char = char.ord
    char = ((((char % 65) + shift) % 26) + 65) if char > 64 && char < 91
    char = ((((char % 97) + shift) % 26) + 97) if char > 96 && char < 123
    char.chr
  end
  shifted_array.join
end

def main_logic
  keep_going = true
  while keep_going
    puts 'Type in your super secret message'
    user_string = gets.chomp
    puts "Type in your value you'd like to shift by"
    shift = gets.chomp.to_i
    puts "Your encoded message is\n\n#{caesar_cipher(user_string, shift)}\n\nWould you like to encode another message?"
    answer = gets.chomp.downcase
    keep_going = false unless %w[y yes].include?(answer)
  end
end
