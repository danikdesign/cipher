require 'digest'

puts "Введите фразу для шифрования"

word = gets.chomp

puts "Каким способом зашифровать:\n 1. MD5\n 2. SHA1"

cipher = gets.chomp.to_s

case cipher
  when "1"
    puts Digest::MD5.hexdigest(word)
  when "2"
    puts Digest::SHA1.hexdigest(word)
end

