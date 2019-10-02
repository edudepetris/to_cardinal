# ToCardinal

[![Build Status](https://travis-ci.org/edudepetris/to_cardinal.svg?branch=master)](https://travis-ci.org/edudepetris/to_cardinal)
[![Coverage Status](https://img.shields.io/coveralls/edudepetris/to_cardinal.svg)](https://coveralls.io/r/edudepetris/to_cardinal?branch=ed%2Fimprove)
[![Gem Version](https://badge.fury.io/rb/to_cardinal.svg)](http://badge.fury.io/rb/to_cardinal)
[![Code Climate](https://codeclimate.com/github/edudepetris/to_cardinal/badges/gpa.svg)](https://codeclimate.com/github/edudepetris/to_cardinal)


Ruby gem which will allow to convert from ordinal numbers to cardinal numbers.
It only supports ordinals from 1 to 100.


## Installation

Add this line to your application's Gemfile:

    gem 'to_cardinal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_cardinal

## Usage

Please use which ever is most comfortable:

You can use _ToCardinal_ without include it in a class.  
Just require ```to_cardinal``` into your Ruby code and use ```cardinalize``` method from Module

```ruby
require 'to_cardinal'

# some ordinal numbers to cardinals
ToCardinal.cardinalize 'first'   # => 1
ToCardinal.cardinalize '1st'     # => 1
ToCardinal.cardinalize 'fourth'  # => 4
ToCardinal.cardinalize '4th'     # => 4
```
You can include _ToCardinal_ in String Ruby’s core library.  
Just require ```to_cardinal/core_ext/string``` into your Ruby code and use ```String#to_cardinal``` method.

```ruby
require 'to_cardinal/core_ext/string'

# some ordinal numbers to cardinals
'first'.to_cardinal   # => 1
'1st'.to_cardinal     # => 1
'fourth'.to_cardinal  # => 4
'4th'.to_cardinal     # => 4

```
You can include _ToCardinal_ in a String's sub-class.  
Just require ```to_cardinal``` into your Ruby code and then ```include``` it in  your _sub-class_
```ruby
require 'to_cardinal'

class A < String
  include ToCardinal
  ...
end

# some ordinal numbers to cardinals
A.new('first').to_cardinal   # => 1
A.new('1st').to_cardinal     # => 1
A.new('fourth').to_cardinal  # => 4
A.new('4th').to_cardinal     # => 4

```

If you are in **Ruby on Rails** and you want to use _ToCardinal_ like ```String#to_cardinal```. You can create an ```initializer``` file like this:

```ruby
# your_project/config/initializers/to_cardinal.rb
require 'to_cardinal/core_ext/string'

# And then you use it
'first'.to_cardinal   # => 1
'1st'.to_cardinal     # => 1
'fourth'.to_cardinal  # => 4
'4th'.to_cardinal     # => 4
```
##Contributing
[How to Contribute](CONTRIBUTING.md)

## License
Distributed under the [MIT license](https://github.com/edudepetris/to_cardinal/blob/master/LICENSE.txt)

-------
First of all, thank ruby community for your help! :punch:
