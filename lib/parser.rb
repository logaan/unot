class Unot
  def initialize( dir, filename )
    @@doc = Nokogiri::HTML( File.open( File.join( dir, "#{filename}.html" ) ) )
    self.instance_eval( File.open( File.join( dir, "#{filename}.rb" ) ).read ) 
  end

  def register_mutators( mutators )
    puts mutators.inspect
  end
end
