require File.join( File.dirname( __FILE__ ), '..', 'unot' )
require 'test/unit'

class HelloWorldTest < Test::Unit::TestCase
  def test_parser
    examples_dir = File.join( File.dirname( __FILE__ ), '..', 'examples' )
    doc = Unot.new( examples_dir , 'hello_world' )
    assert( true, doc.respond_to?( :insert_greeting ) )
  end
end

