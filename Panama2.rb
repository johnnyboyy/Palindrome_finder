def split_string_and_search(str)
	length_of_str = str.length
	palindrome_holder = []

	length_of_str.times do |n|
		str_to_search = str[n..-1]

		palindrome_holder.concat(search_for_palindrome(str_to_search))
	end
	return palindrome_holder
end



def is_palindrome?(str)
	if str.empty?
		return false
	elsif str.reverse == str
		return true
	else
		return false
	end
end

def search_for_palindrome(str)
	n = str.length
	palindromes = []
	n.times do |n|
		new_str = str[0..n]
		if is_palindrome?(new_str) == true
			palindromes << new_str
		end
	end
	return palindromes
end

def longest_palindrome(str)
	all_palindromes = split_string_and_search(str)
	longest_p = ""

	all_palindromes.each_with_index do |p, i|
		if longest_p.length < p.length
			longest_p = all_palindromes[i]
		else
			next
		end
	end
	return longest_p
end
