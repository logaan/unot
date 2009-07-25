require "../src/unot.rb"

register_mutators {
  :hello_world => :insert_greeting
}

def insert_greeting( template )
  template.css('h1').contents = "Hello World"
end

