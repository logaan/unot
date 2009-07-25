require 'src/unot'
require 'open-uri'
require 'pp'

doc = Nokogiri::HTML(File.open('examples/hello_world.html'))

doc.css('h1').content = "Hello"
doc.css('h1').append " World"

puts doc

