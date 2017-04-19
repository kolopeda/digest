require 'digest'
require_relative 'lib/hash_generator'

puts "Введите слово или фразу для шифрования:"
string_to_hash = STDIN.gets.chomp
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
algorithm = STDIN.gets.to_i

if algorithm == 1
  puts HashGenerator.new(string_to_hash).hash_md5
elsif algorithm == 2
  puts HashGenerator.new(string_to_hash).hash_sha1
end