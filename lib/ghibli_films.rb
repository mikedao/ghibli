require 'faraday'
require 'json'
require 'pry'
require_relative 'film'
require_relative 'film_search'

search = FilmSearch.new
search.sorted_films.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end


