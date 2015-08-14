############## Inheritance by Template Method ################

class GenericParser 
  def parse # Template Method
    raise NotImplementedError, 'You must implement the parse method'
  end
end

class JsonParser < GenericParser #The GenericParser class is inherited
  def parse
    puts 'An instance of the JsonParser class received the parse message'
  end
end

class XmlParser < GenericParser # The GenericParser class is inherited
  def parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end

puts 'Using the XmlParser'
parser = XmlParser.new # Object is created for XMLParser
parser.parse # Object is called

puts 'Using the JsonParser'
parser = JsonParser.new # Object is created for JsonParser
parser.parse  