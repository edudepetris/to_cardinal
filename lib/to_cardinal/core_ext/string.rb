require 'to_cardinal'

if String.method_defined? :to_cardinal
  $stderr.puts " **WARNING: Possible conflict with ToCardinal extension:\ \b
    String#to_cardinal already exits."
end
String.send :include, ToCardinal
