puts "Welcome to substrings, an odd experiment"
puts "This script will take a word or sentence(s) and find all occurrences of a set of words (your 'dictionary') in the given word or sentence"
puts "How many words would you like to check for in your word or sentences?"
dic_size = gets.strip.to_i
while dic_size == 0
	puts "That's either 0, or not a number. Try again :DDDD"
	puts "How many words would you like to check for in your word or sentences?"
	dic_size = gets.strip.to_i
end
puts "What words will go in your dictionary?"
n=1
dictionary = []
while n <= dic_size
	puts "Please enter word number #{n}"
	n -= 1
	word = gets.strip.downcase
	dictionary[n] = word
	n += 2
end
puts "This is your dictionary:"
print dictionary

puts "Now, where would you like to check for those words?"
puts "Enter your word(s) or sentence(s) here"
search_through = gets.strip.downcase

def substrings(word, wordset)
	j = 0
	substring_hash = {}
	while j < wordset.length
		if word.include? wordset[j]
			num = word.scan(/#{wordset[j]}/)
			substring_hash[wordset[j]] = num.count
		end
		j += 1
	end
	return substring_hash
	puts substring_hash
end

substrings(search_through, dictionary)

