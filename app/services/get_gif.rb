class GetGif
  def perform(question)
    puts "#################"
    puts "GET GIF"
 

#ruby
require 'net/http'
require 'json'
# question="rats"
url="http://api.giphy.com/v1/gifs/search?q="
url+=question
url+="&api_key=" + ENV['GIPHY_API_KEY'] + "&rating=g"+"&limit=50"
# url+="&api_key=" + ENV['GIPHY_API_KEY'] + "&rating=g"+"&limit=20"+"&lang=fr"
# url+="&api_key=" + "XXXXXXXXXXXXXXXXXXXXXXXXXX" + "&rating=g"+"&limit=16"+"&lang=fr"

# url="http://api.giphy.com/v1/gifs/search?q=<%= question %>&api_key=XXXXXXXX&limit=12"
resp = Net::HTTP.get_response(URI.parse(url))
buffer = resp.body
result = JSON.parse(buffer)
# puts result[1]
return result
 end
end