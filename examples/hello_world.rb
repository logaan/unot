register_mutators :hello_world => :insert_greeting

def insert_greeting( template )
  template.css( 'h1' ).content = "Hello"
  template.css( 'h1' ).append " World"
end

