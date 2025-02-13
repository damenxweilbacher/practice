# Instructions:
# Pick an API endpoint (e.g., https://jsonplaceholder.typicode.com/posts/1).
# Create a file api_demo.rb (or any name).
# Require the libraries:
# require 'net/http'
# require 'json'
# Construct a URI and make the request:
# url = URI("https://jsonplaceholder.typicode.com/posts/1")
# response = Net::HTTP.get(url)
# Parse the response:
# data = JSON.parse(response)
# Print some interesting fields:
# puts "Title: #{data['title']}"
# puts "Body:  #{data['body']}"
# Run it:
# ruby api_demo.rb
# Optional: Try another endpoint or parse multiple items. For instance, if the API returns an array, loop over them:
# data.each do |item|
#   puts item['title']
# end
# Challenge:
# If you want them to do something fancier:
# Store the data in a local array, filter for items, or pick a random item.
# Print a nicely formatted message about the data.
# Possible APIs:
# JSONPlaceholder (test posts, users, etc.):
# https://jsonplaceholder.typicode.com/posts
# https://jsonplaceholder.typicode.com/users
# PokeAPI (Pokémon data):
# https://pokeapi.co/api/v2/pokemon/1
# Rick and Morty API:
# https://rickandmortyapi.com/api/character/1
# Or any other small, public API.
# (edited)
# 7:14
# HTTPBin: A simple HTTP request and response service that allows students to test various HTTP methods and behaviors. It's excellent for learning how different HTTP requests work.
# dev.to
# NASA's Astronomy Picture of the Day (APOD) API: Provides daily images or photographs of our universe along with a brief explanation. It's a fun way to practice making HTTP requests and handling JSON responses.
# twilio.com
# OpenWeatherMap API: Offers current weather data for any location worldwide. Students can practice making requests and parsing JSON data to display weather information.
# The Cat API: Returns random pictures of cats. It's a lighthearted way to practice making API requests and handling image data.
# For discovering more free APIs, consider exploring the following resources:
# Public APIs: A collective list of free APIs for various purposes. It's a great place to find APIs across different categories.
# Awesome APIs: A curated list of APIs that are categorized and well-documented, making it easier to find suitable APIs for learning and development.

require 'net/http'
require 'json'

url = URI("https://rickandmortyapi.com/api/episode/49")
response = Net::HTTP.get(url)
data = JSON.parse(response)

# pp data #prettyprint (prints data nicer)

ppl = data[name]






