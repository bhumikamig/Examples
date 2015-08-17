############## Duck Typing ################

class XmlParser
  def parse 
    puts 'An instance of the XmlParser class received the parse message'
  end
end

class JsonParser
  def parse
    puts 'An instance of the JsonParser class received the parse message'
  end
end

class GenericParser
  def parse(parser) # Object is passed as an argument to the method parse
    parser.parse
  end
end

parser = GenericParser.new
puts 'Using the XmlParser'
parser.parse(XmlParser.new) # Object of XmlParser class is created

puts 'Using the JsonParser'
parser.parse(JsonParser.new) # Object of JsonParser class is created
