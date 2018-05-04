require 'unirest'



puts "Choose a subreddit:"
subreddit = gets.chomp

response = Unirest.get("https://www.reddit.com/r/#{subreddit}/.json")

subreddit_data = response.body

puts "Choose a post number:"

number = (gets.chomp.to_i - 1)

post_title = subreddit_data["data"]["children"][number]["data"]["title"]
post_points = subreddit_data["data"]["children"][number]["data"]["ups"]

puts "#{post_title}"
puts "This post has #{post_points} points."



