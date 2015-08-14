############## Decorator Pattern ################

class Parser
  def parse
    puts 'The Parser class received the parse method'
  end
end

class XmlParser
  def initialize(parser) # Obeject is initialized with the help of constructor
    @parser = parser
  end

  def parse
    @parser.parse # parse method of class Parser is called first
    puts 'An instance of the XmlParser class received the parse message'
  end
end

class JsonParser
  def initialize(parser) # Object is initialized with the help of constructor
    @parser = parser
  end

  def parse
    puts 'An instance of the JsonParser class received the parse message'
    @parser.parse
  end
end

puts 'Using the XmlParser'
parser = Parser.new
XmlParser.new(parser).parse # Object of XmlParser class is created

puts 'Using the JsonParser'
JsonParser.new(parser).parse # Object of JsonParser class is created 

puts 'Using both Parsers!'
JsonParser.new(XmlParser.new(parser)).parse # Both the class Objects are created