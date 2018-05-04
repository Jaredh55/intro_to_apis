require 'unirest'
response = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
p JSON.pretty_generate(response.body)

data.each do |employee_hash|
  puts ""
  puts"=========="
  puts "#{employee_hash["name"]} - #{employee_hash["job_titles"]}"
end
