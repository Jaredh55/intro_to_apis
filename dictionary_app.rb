require 'unirest'

puts "Enter a word:"
word = gets.chomp

response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

definition_data = response.body

definition_data.each_with_index do |definition, index|
  puts "#{index+1} - #{definition["text"]}"
end

# definition = definition_data[0]["text"]

response2 = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&skip=0&limit=5&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
")

top_example_data = response2.body

top_example = top_example_data["text"]


# puts "Definition: #{definition}"

puts "Top example: #{top_example}"







